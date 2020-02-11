# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Self referenced tumbling window trigger dependency.
    #
    class SelfDependencyTumblingWindowTriggerReference < DependencyReference

      include MsRestAzure


      def initialize
        @type = "SelfDependencyTumblingWindowTriggerReference"
      end

      attr_accessor :type

      # @return [String] Timespan applied to the start time of a tumbling
      # window when evaluating dependency.
      attr_accessor :offset

      # @return [String] The size of the window when evaluating the dependency.
      # If undefined the frequency of the tumbling window will be used.
      attr_accessor :size


      #
      # Mapper for SelfDependencyTumblingWindowTriggerReference class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SelfDependencyTumblingWindowTriggerReference',
          type: {
            name: 'Composite',
            class_name: 'SelfDependencyTumblingWindowTriggerReference',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              offset: {
                client_side_validation: true,
                required: true,
                serialized_name: 'offset',
                constraints: {
                  MaxLength: 15,
                  MinLength: 8,
                  Pattern: '-((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))'
                },
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                constraints: {
                  MaxLength: 15,
                  MinLength: 8,
                  Pattern: '((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))'
                },
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
