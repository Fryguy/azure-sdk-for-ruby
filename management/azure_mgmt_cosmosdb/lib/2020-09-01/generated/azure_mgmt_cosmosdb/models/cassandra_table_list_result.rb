# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # The List operation response, that contains the Cassandra tables and their
    # properties.
    #
    class CassandraTableListResult

      include MsRestAzure

      # @return [Array<CassandraTableGetResults>] List of Cassandra tables and
      # their properties.
      attr_accessor :value


      #
      # Mapper for CassandraTableListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CassandraTableListResult',
          type: {
            name: 'Composite',
            class_name: 'CassandraTableListResult',
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
                      serialized_name: 'CassandraTableGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CassandraTableGetResults'
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
