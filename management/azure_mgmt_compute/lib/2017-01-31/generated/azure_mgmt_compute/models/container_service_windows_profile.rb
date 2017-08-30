# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_01_31
  module Models
    #
    # Profile for Windows VMs in the container service cluster.
    #
    class ContainerServiceWindowsProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The administrator username to use for Windows VMs.
      attr_accessor :admin_username

      # @return [String] The administrator password to use for Windows VMs.
      attr_accessor :admin_password


      #
      # Mapper for ContainerServiceWindowsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceWindowsProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceWindowsProfile',
            model_properties: {
              admin_username: {
                required: true,
                serialized_name: 'adminUsername',
                constraints: {
                  Pattern: '^[a-zA-Z0-9]+([._]?[a-zA-Z0-9]+)*$'
                },
                type: {
                  name: 'String'
                }
              },
              admin_password: {
                required: true,
                serialized_name: 'adminPassword',
                constraints: {
                  Pattern: '^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%\^&\*\(\)])[a-zA-Z\d!@#$%\^&\*\(\)]{12,123}$'
                },
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
