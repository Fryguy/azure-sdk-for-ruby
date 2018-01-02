# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # The properties of an Active Directory object.
    #
    class AADObject

      include MsRestAzure

      # @return [String] The ID of the object.
      attr_accessor :object_id

      # @return [String] The type of AAD object.
      attr_accessor :object_type

      # @return [String] The display name of the object.
      attr_accessor :display_name

      # @return [String] The principal name of the object.
      attr_accessor :user_principal_name

      # @return [String] The primary email address of the object.
      attr_accessor :mail

      # @return [Boolean] Whether the AAD object is mail-enabled.
      attr_accessor :mail_enabled

      # @return [String] The mail alias for the user.
      attr_accessor :mail_nickname

      # @return [Boolean] Whether the AAD object is security-enabled.
      attr_accessor :security_enabled

      # @return [String] The sign-in name of the object.
      attr_accessor :sign_in_name

      # @return [Array<String>] A collection of service principal names
      # associated with the object.
      attr_accessor :service_principal_names

      # @return [String] The user type of the object.
      attr_accessor :user_type

      # @return [String] A two letter country code (ISO standard 3166).
      # Required for users that will be assigned licenses due to legal
      # requirement to check for availability of services in countries.
      # Examples include: "US", "JP", and "GB".
      attr_accessor :usage_location

      # @return [String] The application ID.
      attr_accessor :app_id

      # @return [Array<String>] The application permissions.
      attr_accessor :app_permissions

      # @return [Boolean] Whether the application is be available to other
      # tenants.
      attr_accessor :available_to_other_tenants

      # @return [Array<String>] A collection of URIs for the application.
      attr_accessor :identifier_uris

      # @return [Array<String>] A collection of reply URLs for the application.
      attr_accessor :reply_urls

      # @return [String] The home page of the application.
      attr_accessor :homepage


      #
      # Mapper for AADObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AADObject',
          type: {
            name: 'Composite',
            class_name: 'AADObject',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              user_principal_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userPrincipalName',
                type: {
                  name: 'String'
                }
              },
              mail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mail',
                type: {
                  name: 'String'
                }
              },
              mail_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mailEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              mail_nickname: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mailNickname',
                type: {
                  name: 'String'
                }
              },
              security_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              sign_in_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signInName',
                type: {
                  name: 'String'
                }
              },
              service_principal_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'servicePrincipalNames',
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
              user_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userType',
                type: {
                  name: 'String'
                }
              },
              usage_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'usageLocation',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              app_permissions: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                read_only: true,
                serialized_name: 'availableToOtherTenants',
                type: {
                  name: 'Boolean'
                }
              },
              identifier_uris: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                read_only: true,
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
                read_only: true,
                serialized_name: 'homepage',
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
