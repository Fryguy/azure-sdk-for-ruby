# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Specification for using a Virtual Network.
    #
    class VirtualNetworkProfile

      include MsRestAzure

      # @return [String] Resource id of the Virtual Network.
      attr_accessor :id

      # @return [String] Name of the Virtual Network (read-only).
      attr_accessor :name

      # @return [String] Resource type of the Virtual Network (read-only).
      attr_accessor :type

      # @return [String] Subnet within the Virtual Network.
      attr_accessor :subnet


      #
      # Mapper for VirtualNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkProfile',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
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
