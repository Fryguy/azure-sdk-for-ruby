# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2016_10_01
  module Models
    #
    # Properties of the deleted vault.
    #
    class DeletedVaultProperties

      include MsRestAzure

      # @return [String] The resource id of the original vault.
      attr_accessor :vault_id

      # @return [String] The location of the original vault.
      attr_accessor :location

      # @return [DateTime] The deleted date.
      attr_accessor :deletion_date

      # @return [DateTime] The scheduled purged date.
      attr_accessor :scheduled_purge_date

      # @return [Hash{String => String}] Tags of the original vault.
      attr_accessor :tags


      #
      # Mapper for DeletedVaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedVaultProperties',
          type: {
            name: 'Composite',
            class_name: 'DeletedVaultProperties',
            model_properties: {
              vault_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vaultId',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              deletion_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletionDate',
                type: {
                  name: 'DateTime'
                }
              },
              scheduled_purge_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scheduledPurgeDate',
                type: {
                  name: 'DateTime'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
