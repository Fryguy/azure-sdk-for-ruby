# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2015_11_01
  module Models
    #
    # Class containing DNS settings in a Traffic Manager profile.
    #
    class DnsConfig

      include MsRestAzure

      # @return [String] Gets or sets the relative DNS name provided by this
      # Traffic Manager profile.  This value is combined with the DNS domain
      # name used by Azure Traffic Manager to form the fully-qualified domain
      # name (FQDN) of the profile.
      attr_accessor :relative_name

      # @return [String] Gets or sets the fully-qualified domain name (FQDN) of
      # the Traffic Manager profile.  This is formed from the concatenation of
      # the RelativeName with the DNS domain used by Azure Traffic Manager.
      attr_accessor :fqdn

      # @return [Integer] Gets or sets the DNS Ttime-To-Live (TTL), in seconds.
      # This informs the local DNS resolvers and DNS clients how long to cache
      # DNS responses provided by this Traffic Manager profile.
      attr_accessor :ttl


      #
      # Mapper for DnsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DnsConfig',
          type: {
            name: 'Composite',
            class_name: 'DnsConfig',
            model_properties: {
              relative_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'relativeName',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ttl',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
