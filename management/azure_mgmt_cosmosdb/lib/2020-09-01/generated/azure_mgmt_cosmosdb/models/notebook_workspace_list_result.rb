# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # A list of notebook workspace resources
    #
    class NotebookWorkspaceListResult

      include MsRestAzure

      # @return [Array<NotebookWorkspace>] Array of notebook workspace
      # resources
      attr_accessor :value


      #
      # Mapper for NotebookWorkspaceListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NotebookWorkspaceListResult',
          type: {
            name: 'Composite',
            class_name: 'NotebookWorkspaceListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NotebookWorkspaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NotebookWorkspace'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
