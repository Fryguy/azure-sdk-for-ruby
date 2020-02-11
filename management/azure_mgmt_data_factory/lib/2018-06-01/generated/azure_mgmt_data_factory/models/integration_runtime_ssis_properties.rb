# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # SSIS properties for managed integration runtime.
    #
    class IntegrationRuntimeSsisProperties

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [IntegrationRuntimeSsisCatalogInfo] Catalog information for
      # managed dedicated integration runtime.
      attr_accessor :catalog_info

      # @return [IntegrationRuntimeLicenseType] License type for bringing your
      # own license scenario. Possible values include: 'BasePrice',
      # 'LicenseIncluded'
      attr_accessor :license_type

      # @return [IntegrationRuntimeCustomSetupScriptProperties] Custom setup
      # script properties for a managed dedicated integration runtime.
      attr_accessor :custom_setup_script_properties

      # @return [IntegrationRuntimeDataProxyProperties] Data proxy properties
      # for a managed dedicated integration runtime.
      attr_accessor :data_proxy_properties

      # @return [IntegrationRuntimeEdition] The edition for the SSIS
      # Integration Runtime. Possible values include: 'Standard', 'Enterprise'
      attr_accessor :edition

      # @return [Array<CustomSetupBase>] Custom setup without script properties
      # for a SSIS integration runtime.
      attr_accessor :express_custom_setup_properties


      #
      # Mapper for IntegrationRuntimeSsisProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeSsisProperties',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeSsisProperties',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              catalog_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'catalogInfo',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeSsisCatalogInfo'
                }
              },
              license_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'licenseType',
                type: {
                  name: 'String'
                }
              },
              custom_setup_script_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customSetupScriptProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeCustomSetupScriptProperties'
                }
              },
              data_proxy_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataProxyProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeDataProxyProperties'
                }
              },
              edition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'edition',
                type: {
                  name: 'String'
                }
              },
              express_custom_setup_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expressCustomSetupProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CustomSetupBaseElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'CustomSetupBase',
                        class_name: 'CustomSetupBase'
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
