# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices::Api_2016_05_16
  module Models
    #
    # An object that represents enumerating SKUs for existing resources
    #
    class SkuEnumerationForExistingResourceResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SkuDetailsForExistingResource>] The collection of
      # available SKUs for existing resources
      attr_accessor :value


      #
      # Mapper for SkuEnumerationForExistingResourceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SkuEnumerationForExistingResourceResult',
          type: {
            name: 'Composite',
            class_name: 'SkuEnumerationForExistingResourceResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SkuDetailsForExistingResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SkuDetailsForExistingResource'
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
