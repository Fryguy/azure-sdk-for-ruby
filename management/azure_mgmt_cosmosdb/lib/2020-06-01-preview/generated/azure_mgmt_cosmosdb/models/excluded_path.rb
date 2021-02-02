# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class ExcludedPath

      include MsRestAzure

      # @return [String] The path for which the indexing behavior applies to.
      # Index paths typically start with root and end with wildcard (/path/*)
      attr_accessor :path


      #
      # Mapper for ExcludedPath class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExcludedPath',
          type: {
            name: 'Composite',
            class_name: 'ExcludedPath',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
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
