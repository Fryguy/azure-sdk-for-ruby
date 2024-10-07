#!/usr/bin/env ruby

require "tmpdir"
require "awesome_spawn"
require "fileutils"

GEMS = {
  "azure_mgmt_compute"   => %w[v2017_03_09 v2018_03_01],
  "azure_mgmt_monitor"   => %w[latest],
  "azure_mgmt_network"   => %w[v2017_03_09 v2018_03_01],
  "azure_mgmt_resources" => %w[v2017_03_09 v2018_03_01],
}

class PurgeUnused
  attr_reader :gem, :root_dir, :gem_root_dir, :gem_dir, :gem_require, :profiles, :profiles_to_delete, :apis_to_delete

  def initialize(gem, profiles, repo_dir = File.expand_path("..", __dir__))
    @gem = gem
    @root_dir = File.join(repo_dir, "management")
    @gem_root_dir = File.join(root_dir, gem)
    @gem_dir = File.join(gem_root_dir, "lib")
    @gem_require = File.join(gem_dir, "#{gem}.rb")

    @profiles = profiles
    @profiles_to_delete = Dir.children(File.join(gem_dir, "profiles")) - profiles
  end

  def run
    purge_profiles
    commit_changes("Purging unused #{gem} profiles")

    purge_apis
    commit_changes("Purging #{gem} APIs not used by profiles")
  end

  private

  def purge_profiles
    puts "** Purging profiles..."
    delete_profile_lines
    delete_profiles
  end

  def delete_profile_lines
    lines = File.readlines(gem_require)
    lines.map! { |l| l.match?(/^require 'profiles\/#{Regexp.union(profiles_to_delete)}\//) ? nil : l }.compact!
    File.write(gem_require, lines.join)
  end

  def delete_profiles
    profiles_to_delete.each do |profile|
      rm_dir = File.join(gem_dir, "profiles", profile)
      puts "** Deleting profile #{rm_dir}"
      FileUtils.rm_rf(rm_dir)
    end
  end

  def purge_apis
    puts "** Purging APIs..."
    detect_apis_to_delete
    delete_api_lines
    delete_apis
  end

  def detect_apis_to_delete
    comment_api_lines
    until (result = execute_test_exe).success?
      version = missing_version_from_error(result.error)
      uncomment_api_line(version)
    end
    @apis_to_delete = commented_apis.sort
  end

  def missing_version_from_error(error)
    line = error.lines.detect { |l| l.include?(" = Azure::" ) }
    raise error if line.nil?

    line.match(/(?<=::)V(\d{4}[^:]+)/)[1].tr("_", "-")
  end

  def comment_line(line)
    line.start_with?("#") ? line : "\##{line}"
  end

  def comment_api_lines
    lines = File.readlines(gem_require)
    lines.map! { |l| l.match?(/^require '\d{4}-\d{2}-\d{2}/) ? comment_line(l) : l }
    File.write(gem_require, lines.join)
  end

  def uncomment_line(line)
    line.start_with?("#") ? line[1..] : line
  end

  def uncomment_api_line(version)
    lines = File.readlines(gem_require)
    lines.map! { |l| l.start_with?("#require '#{version}") ? uncomment_line(l) : l }
    File.write(gem_require, lines.join)
  end

  def commented_apis
    lines = File.readlines(gem_require)
    lines.map do |l|
      if (match = l.match((/^#require '(\d{4}-\d{2}-\d{2}[^\/]*)\//)))
        match[1]
      end
    end.compact
  end

  def delete_api_lines
    lines = File.readlines(gem_require)
    lines.map! do |l|
      l.match?(/require '#{Regexp.union(apis_to_delete)}\//) ? nil : l
    end.compact!
    File.write(gem_require, lines.join)
  end

  def delete_apis
    apis_to_delete.each do |api|
      rm_dir = File.join(gem_dir, api)
      puts "** Deleting API #{rm_dir}"
      FileUtils.rm_rf(rm_dir)
    end
  end

  def commit_changes(message)
    system("git", "commit", "-am", message, :chdir => root_dir)
  end

  def test_exe
    @text_exe ||=
      File.join(Dir.mktmpdir, "test.rb").tap do |exe|
        File.write(exe, <<~RUBY)
          gem_name, gem_root_dir = *ARGV

          require "bundler/inline"
          gemfile do
            gem gem_name, :path => gem_root_dir
          end

          def load_constants(mod)
            mod.constants.each do |const_name|
              const = mod.const_get(const_name)
              load_constants(const) if const.is_a?(Module)
            end
          end

          require gem_name
          load_constants(::Azure)
        RUBY
      end
  end

  def execute_test_exe
    AwesomeSpawn.run("ruby", :params => [test_exe, gem, gem_root_dir])
  end
end

GEMS.each do |gem, profiles|
  PurgeUnused.new(gem, profiles).run
end
