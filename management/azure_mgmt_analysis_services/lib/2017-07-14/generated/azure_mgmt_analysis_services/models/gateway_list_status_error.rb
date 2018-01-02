# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_07_14
  module Models
    #
    # Status of gateway is error
    #
    class GatewayListStatusError

      include MsRestAzure

      # @return [GatewayError] Error of the list gateway status.
      attr_accessor :error


      #
      # Mapper for GatewayListStatusError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GatewayListStatusError',
          type: {
            name: 'Composite',
            class_name: 'GatewayListStatusError',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'GatewayError'
                }
              }
            }
          }
        }
      end
    end
  end
end
