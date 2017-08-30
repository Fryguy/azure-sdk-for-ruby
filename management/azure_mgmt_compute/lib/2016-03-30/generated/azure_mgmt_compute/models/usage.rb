# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_01_31
  module Models
    #
    # Describes Compute Resource Usage.
    #
    class Usage

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] An enum describing the unit of usage measurement.
      # Default value: 'Count' .
      attr_accessor :unit

      # @return [Integer] The current usage of the resource.
      attr_accessor :current_value

      # @return [Integer] The maximum permitted usage of the resource.
      attr_accessor :limit

      # @return [UsageName] The name of the type of usage.
      attr_accessor :name


      #
      # Mapper for Usage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Usage',
          type: {
            name: 'Composite',
            class_name: 'Usage',
            model_properties: {
              unit: {
                required: true,
                is_constant: true,
                serialized_name: 'unit',
                default_value: 'Count',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                required: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                required: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'UsageName'
                }
              }
            }
          }
        }
      end
    end
  end
end
