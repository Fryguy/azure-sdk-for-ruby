# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The job error details. Contains list of job error items.
    #
    class JobErrorDetails

      include MsRestAzure

      # @return [Array<JobErrorItem>] The error details.
      attr_accessor :error_details

      # @return [String] The error code intended for programmatic access.
      attr_accessor :code

      # @return [String] The error message intended to describe the error in
      # detail.
      attr_accessor :message


      #
      # Mapper for JobErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'JobErrorDetails',
            model_properties: {
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobErrorItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorItem'
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
