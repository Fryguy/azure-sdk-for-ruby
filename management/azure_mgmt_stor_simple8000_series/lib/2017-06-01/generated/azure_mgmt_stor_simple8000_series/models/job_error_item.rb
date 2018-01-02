# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The job error items.
    #
    class JobErrorItem

      include MsRestAzure

      # @return [Array<String>] The recommended actions.
      attr_accessor :recommendations

      # @return [String] The error code intended for programmatic access.
      attr_accessor :code

      # @return [String] The error message intended to describe the error in
      # detail.
      attr_accessor :message


      #
      # Mapper for JobErrorItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobErrorItem',
          type: {
            name: 'Composite',
            class_name: 'JobErrorItem',
            model_properties: {
              recommendations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
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
