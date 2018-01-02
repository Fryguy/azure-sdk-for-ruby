# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the update dsc node operation.
    #
    class DscNodeUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the id of the dsc node.
      attr_accessor :node_id

      # @return [DscNodeConfigurationAssociationProperty] Gets or sets the
      # configuration of the node.
      attr_accessor :node_configuration


      #
      # Mapper for DscNodeUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscNodeUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DscNodeUpdateParameters',
            model_properties: {
              node_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeId',
                type: {
                  name: 'String'
                }
              },
              node_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'DscNodeConfigurationAssociationProperty'
                }
              }
            }
          }
        }
      end
    end
  end
end
