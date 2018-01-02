# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2016_04_01
  module Models
    #
    # Parameters for Redis import operation.
    #
    class ImportRDBParameters

      include MsRestAzure

      # @return [String] File format.
      attr_accessor :format

      # @return [Array<String>] files to import.
      attr_accessor :files


      #
      # Mapper for ImportRDBParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImportRDBParameters',
          type: {
            name: 'Composite',
            class_name: 'ImportRDBParameters',
            model_properties: {
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              files: {
                client_side_validation: true,
                required: true,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
