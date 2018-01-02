# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Request parameters for creating a new work or school account user.
    #
    class UserCreateParameters < UserBase

      include MsRestAzure

      # @return [Boolean] Whether the account is enabled.
      attr_accessor :account_enabled

      # @return [String] The display name of the user.
      attr_accessor :display_name

      # @return [PasswordProfile] Password Profile
      attr_accessor :password_profile

      # @return [String] The user principal name (someuser@contoso.com). It
      # must contain one of the verified domains for the tenant.
      attr_accessor :user_principal_name

      # @return [String] The mail alias for the user.
      attr_accessor :mail_nickname

      # @return [String] The primary email address of the user.
      attr_accessor :mail


      #
      # Mapper for UserCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserCreateParameters',
            model_properties: {
              immutable_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'immutableId',
                type: {
                  name: 'String'
                }
              },
              usage_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'usageLocation',
                type: {
                  name: 'String'
                }
              },
              given_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'givenName',
                type: {
                  name: 'String'
                }
              },
              surname: {
                client_side_validation: true,
                required: false,
                serialized_name: 'surname',
                type: {
                  name: 'String'
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
              account_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              password_profile: {
                client_side_validation: true,
                required: true,
                serialized_name: 'passwordProfile',
                type: {
                  name: 'Composite',
                  class_name: 'PasswordProfile'
                }
              },
              user_principal_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'userPrincipalName',
                type: {
                  name: 'String'
                }
              },
              mail_nickname: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mailNickname',
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
              }
            }
          }
        }
      end
    end
  end
end
