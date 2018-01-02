# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Search::Mgmt::V2015_08_19
  module Models
    #
    # Describes an API key for a given Azure Search service that has
    # permissions for query operations only.
    #
    class QueryKey

      include MsRestAzure

      # @return [String] The name of the query API key; may be empty.
      attr_accessor :name

      # @return [String] The value of the query API key.
      attr_accessor :key


      #
      # Mapper for QueryKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryKey',
          type: {
            name: 'Composite',
            class_name: 'QueryKey',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'key',
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
