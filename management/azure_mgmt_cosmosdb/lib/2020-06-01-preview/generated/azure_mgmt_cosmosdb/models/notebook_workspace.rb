# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # A notebook workspace resource
    #
    class NotebookWorkspace < ARMProxyResource

      include MsRestAzure

      # @return [String] Specifies the endpoint of Notebook server.
      attr_accessor :notebook_server_endpoint

      # @return [String] Status of the notebook workspace. Possible values are:
      # Creating, Online, Deleting, Failed, Updating.
      attr_accessor :status


      #
      # Mapper for NotebookWorkspace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NotebookWorkspace',
          type: {
            name: 'Composite',
            class_name: 'NotebookWorkspace',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              notebook_server_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.notebookServerEndpoint',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
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
