# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_12_01
  module Models
    #
    # UrlPathMaps give a url path to the backend mapping information for
    # PathBasedRouting.
    #
    class ApplicationGatewayUrlPathMap < SubResource

      include MsRestAzure

      # @return [SubResource] Default backend address pool resource of URL path
      # map.
      attr_accessor :default_backend_address_pool

      # @return [SubResource] Default backend http settings resource of URL
      # path map.
      attr_accessor :default_backend_http_settings

      # @return [Array<ApplicationGatewayPathRule>] Path rule of URL path map
      # resource.
      attr_accessor :path_rules

      # @return [String] Provisioning state of the backend http settings
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayUrlPathMap class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayUrlPathMap',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayUrlPathMap',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              default_backend_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultBackendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              default_backend_http_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultBackendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              path_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pathRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationGatewayPathRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayPathRule'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
