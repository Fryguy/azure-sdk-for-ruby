# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity source for an Office 365 service.
    #
    class Office365Source < CopySource

      include MsRestAzure


      def initialize
        @type = "Office365Source"
      end

      attr_accessor :type

      # @return The groups containing all the users. Type: array of strings (or
      # Expression with resultType array of strings).
      attr_accessor :allowed_groups

      # @return The user scope uri. Type: string (or Expression with resultType
      # string).
      attr_accessor :user_scope_filter_uri

      # @return The Column to apply the <paramref name="StartTime"/> and
      # <paramref name="EndTime"/>. Type: string (or Expression with resultType
      # string).
      attr_accessor :date_filter_column

      # @return Start time of the requested range for this dataset. Type:
      # string (or Expression with resultType string).
      attr_accessor :start_time

      # @return End time of the requested range for this dataset. Type: string
      # (or Expression with resultType string).
      attr_accessor :end_time

      # @return The columns to be read out from the Office 365 table. Type:
      # array of objects (or Expression with resultType array of objects).
      # Example: [ { "name": "Id" }, { "name": "CreatedDateTime" } ]
      attr_accessor :output_columns


      #
      # Mapper for Office365Source class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Office365Source',
          type: {
            name: 'Composite',
            class_name: 'Office365Source',
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
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
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
              allowed_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedGroups',
                type: {
                  name: 'Object'
                }
              },
              user_scope_filter_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userScopeFilterUri',
                type: {
                  name: 'Object'
                }
              },
              date_filter_column: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dateFilterColumn',
                type: {
                  name: 'Object'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'Object'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'Object'
                }
              },
              output_columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'outputColumns',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
