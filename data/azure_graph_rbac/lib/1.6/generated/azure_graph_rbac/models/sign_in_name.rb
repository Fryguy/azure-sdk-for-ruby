# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Contains information about a sign-in name of a local account user in an
    # Azure Active Directory B2C tenant.
    #
    class SignInName

      include MsRestAzure

      # @return [String] A string value that can be used to classify user
      # sign-in types in your directory, such as 'emailAddress' or 'userName'.
      attr_accessor :type

      # @return [String] The sign-in used by the local account. Must be unique
      # across the company/tenant. For example, 'johnc@example.com'.
      attr_accessor :value


      #
      # Mapper for SignInName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignInName',
          type: {
            name: 'Composite',
            class_name: 'SignInName',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
