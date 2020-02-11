# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Trigger that runs every time a Blob event occurs.
    #
    class BlobEventsTrigger < MultiplePipelineTrigger

      include MsRestAzure


      def initialize
        @type = "BlobEventsTrigger"
      end

      attr_accessor :type

      # @return [String] The blob path must begin with the pattern provided for
      # trigger to fire. For example, '/records/blobs/december/' will only fire
      # the trigger for blobs in the december folder under the records
      # container. At least one of these must be provided: blobPathBeginsWith,
      # blobPathEndsWith.
      attr_accessor :blob_path_begins_with

      # @return [String] The blob path must end with the pattern provided for
      # trigger to fire. For example, 'december/boxes.csv' will only fire the
      # trigger for blobs named boxes in a december folder. At least one of
      # these must be provided: blobPathBeginsWith, blobPathEndsWith.
      attr_accessor :blob_path_ends_with

      # @return [Boolean] If set to true, blobs with zero bytes will be
      # ignored.
      attr_accessor :ignore_empty_blobs

      # @return [Array<BlobEventTypes>] The type of events that cause this
      # trigger to fire.
      attr_accessor :events

      # @return [String] The ARM resource ID of the Storage Account.
      attr_accessor :scope


      #
      # Mapper for BlobEventsTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobEventsTrigger',
          type: {
            name: 'Composite',
            class_name: 'BlobEventsTrigger',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              runtime_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'runtimeState',
                type: {
                  name: 'String'
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              pipelines: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pipelines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TriggerPipelineReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TriggerPipelineReference'
                      }
                  }
                }
              },
              blob_path_begins_with: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.blobPathBeginsWith',
                type: {
                  name: 'String'
                }
              },
              blob_path_ends_with: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.blobPathEndsWith',
                type: {
                  name: 'String'
                }
              },
              ignore_empty_blobs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.ignoreEmptyBlobs',
                type: {
                  name: 'Boolean'
                }
              },
              events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.events',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BlobEventTypesElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.scope',
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
