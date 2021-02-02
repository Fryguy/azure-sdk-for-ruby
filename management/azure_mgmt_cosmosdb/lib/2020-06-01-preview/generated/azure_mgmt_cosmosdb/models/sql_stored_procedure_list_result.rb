# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # The List operation response, that contains the storedProcedures and their
    # properties.
    #
    class SqlStoredProcedureListResult

      include MsRestAzure

      # @return [Array<SqlStoredProcedureGetResults>] List of storedProcedures
      # and their properties.
      attr_accessor :value


      #
      # Mapper for SqlStoredProcedureListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlStoredProcedureListResult',
          type: {
            name: 'Composite',
            class_name: 'SqlStoredProcedureListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SqlStoredProcedureGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SqlStoredProcedureGetResults'
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
