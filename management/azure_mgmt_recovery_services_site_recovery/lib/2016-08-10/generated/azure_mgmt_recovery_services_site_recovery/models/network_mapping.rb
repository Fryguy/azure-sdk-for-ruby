# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Network Mapping model. Ideally it should have been possible to inherit
    # this class from prev version in InheritedModels as long as there is no
    # difference in structure or method signature. Since there were no base
    # Models for certain fields and methods viz NetworkMappingProperties and
    # Load with required return type, the class has been introduced in its
    # entirety with references to base models to facilitate exensions in
    # subsequent versions.
    #
    class NetworkMapping < Resource

      include MsRestAzure

      # @return [NetworkMappingProperties] The Network Mapping Properties.
      attr_accessor :properties


      #
      # Mapper for NetworkMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkMapping',
          type: {
            name: 'Composite',
            class_name: 'NetworkMapping',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkMappingProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
