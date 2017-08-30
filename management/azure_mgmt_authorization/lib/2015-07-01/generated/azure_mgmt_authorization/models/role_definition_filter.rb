# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization::Api_2015_07_01
  module Models
    #
    # Role Definitions filter
    #
    class RoleDefinitionFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Returns role definition with the specific name.
      attr_accessor :role_name


      #
      # Mapper for RoleDefinitionFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleDefinitionFilter',
          type: {
            name: 'Composite',
            class_name: 'RoleDefinitionFilter',
            model_properties: {
              role_name: {
                required: false,
                serialized_name: 'roleName',
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
