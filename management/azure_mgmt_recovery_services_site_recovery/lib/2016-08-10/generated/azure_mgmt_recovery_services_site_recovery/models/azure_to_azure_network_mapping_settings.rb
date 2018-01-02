# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # A2A Network Mapping fabric specific settings.
    #
    class AzureToAzureNetworkMappingSettings < NetworkMappingFabricSpecificSettings

      include MsRestAzure


      def initialize
        @instanceType = "AzureToAzure"
      end

      attr_accessor :instanceType

      # @return [String] The primary fabric location.
      attr_accessor :primary_fabric_location

      # @return [String] The recovery fabric location.
      attr_accessor :recovery_fabric_location


      #
      # Mapper for AzureToAzureNetworkMappingSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureToAzure',
          type: {
            name: 'Composite',
            class_name: 'AzureToAzureNetworkMappingSettings',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              primary_fabric_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryFabricLocation',
                type: {
                  name: 'String'
                }
              },
              recovery_fabric_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryFabricLocation',
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
