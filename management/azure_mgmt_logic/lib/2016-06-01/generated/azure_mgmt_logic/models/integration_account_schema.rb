# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The integration account schema.
    #
    class IntegrationAccountSchema < Resource

      include MsRestAzure

      # @return [SchemaType] The schema type. Possible values include:
      # 'NotSpecified', 'Xml'
      attr_accessor :schema_type

      # @return [String] The target namespace of the schema.
      attr_accessor :target_namespace

      # @return [String] The document name.
      attr_accessor :document_name

      # @return [String] The file name.
      attr_accessor :file_name

      # @return [DateTime] The created time.
      attr_accessor :created_time

      # @return [DateTime] The changed time.
      attr_accessor :changed_time

      # @return The metadata.
      attr_accessor :metadata

      # @return [String] The content.
      attr_accessor :content

      # @return [String] The content type.
      attr_accessor :content_type

      # @return [ContentLink] The content link.
      attr_accessor :content_link


      #
      # Mapper for IntegrationAccountSchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationAccountSchema',
          type: {
            name: 'Composite',
            class_name: 'IntegrationAccountSchema',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              schema_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.schemaType',
                type: {
                  name: 'Enum',
                  module: 'SchemaType'
                }
              },
              target_namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetNamespace',
                type: {
                  name: 'String'
                }
              },
              document_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.documentName',
                type: {
                  name: 'String'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fileName',
                type: {
                  name: 'String'
                }
              },
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Object'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.content',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentType',
                type: {
                  name: 'String'
                }
              },
              content_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.contentLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              }
            }
          }
        }
      end
    end
  end
end
