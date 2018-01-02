# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Specifies the set of OAuth 2.0 permission scopes and app roles under the
    # specified resource that an application requires access to. The specified
    # OAuth 2.0 permission scopes may be requested by client applications
    # (through the requiredResourceAccess collection) when calling a resource
    # application. The requiredResourceAccess property of the Application
    # entity is a collection of ReqiredResourceAccess.
    #
    class RequiredResourceAccess

      include MsRestAzure

      # @return [Array<ResourceAccess>] The list of OAuth2.0 permission scopes
      # and app roles that the application requires from the specified
      # resource.
      attr_accessor :resource_access

      # @return [String] The unique identifier for the resource that the
      # application requires access to. This should be equal to the appId
      # declared on the target resource application.
      attr_accessor :resource_app_id


      #
      # Mapper for RequiredResourceAccess class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequiredResourceAccess',
          type: {
            name: 'Composite',
            class_name: 'RequiredResourceAccess',
            model_properties: {
              resource_access: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceAccess',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceAccessElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceAccess'
                      }
                  }
                }
              },
              resource_app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceAppId',
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
