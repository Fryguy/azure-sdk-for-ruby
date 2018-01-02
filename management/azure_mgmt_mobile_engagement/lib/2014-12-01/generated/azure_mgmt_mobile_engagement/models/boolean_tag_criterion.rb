# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Target devices based on a boolean tag value.
    #
    class BooleanTagCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "boolean-tag"
      end

      attr_accessor :type

      # @return [String] The name of the custom tag.
      attr_accessor :name

      # @return [Boolean] A custom boolean value to match.
      attr_accessor :value


      #
      # Mapper for BooleanTagCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'boolean-tag',
          type: {
            name: 'Composite',
            class_name: 'BooleanTagCriterion',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
