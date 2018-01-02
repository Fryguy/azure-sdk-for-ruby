# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory application information.
    #
    class Application

      include MsRestAzure

      # @return [String] The object ID.
      attr_accessor :object_id

      # @return [String] The object type.
      attr_accessor :object_type

      # @return [String] The application ID.
      attr_accessor :app_id

      # @return [Array<String>] The application permissions.
      attr_accessor :app_permissions

      # @return [Boolean] Whether the application is be available to other
      # tenants.
      attr_accessor :available_to_other_tenants

      # @return [String] The display name of the application.
      attr_accessor :display_name

      # @return [Array<String>] A collection of URIs for the application.
      attr_accessor :identifier_uris

      # @return [Array<String>] A collection of reply URLs for the application.
      attr_accessor :reply_urls

      # @return [String] The home page of the application.
      attr_accessor :homepage

      # @return [Boolean] Whether to allow implicit grant flow for OAuth2
      attr_accessor :oauth2allow_implicit_flow


      #
      # Mapper for Application class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'Application',
            model_properties: {
              object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              object_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              app_permissions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appPermissions',
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
              },
              available_to_other_tenants: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availableToOtherTenants',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              identifier_uris: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identifierUris',
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
              },
              reply_urls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replyUrls',
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
              },
              homepage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'homepage',
                type: {
                  name: 'String'
                }
              },
              oauth2allow_implicit_flow: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oauth2AllowImplicitFlow',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
