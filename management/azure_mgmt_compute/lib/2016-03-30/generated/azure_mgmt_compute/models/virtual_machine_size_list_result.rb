# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_01_31
  module Models
    #
    # The List Virtual Machine operation response.
    #
    class VirtualMachineSizeListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VirtualMachineSize>] The list of virtual machine sizes.
      attr_accessor :value


      #
      # Mapper for VirtualMachineSizeListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineSizeListResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineSizeListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineSizeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineSize'
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
