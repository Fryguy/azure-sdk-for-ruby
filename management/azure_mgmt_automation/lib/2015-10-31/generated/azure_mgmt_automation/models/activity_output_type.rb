# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the activity output type.
    #
    class ActivityOutputType

      include MsRestAzure

      # @return [String] Gets or sets the name of the activity output type.
      attr_accessor :name

      # @return [String] Gets or sets the type of the activity output type.
      attr_accessor :type


      #
      # Mapper for ActivityOutputType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActivityOutputType',
          type: {
            name: 'Composite',
            class_name: 'ActivityOutputType',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
