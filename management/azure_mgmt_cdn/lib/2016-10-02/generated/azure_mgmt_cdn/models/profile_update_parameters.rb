# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2016_10_02
  module Models
    #
    # Properties required to update a profile.
    #
    class ProfileUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] Profile tags
      attr_accessor :tags


      #
      # Mapper for ProfileUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProfileUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ProfileUpdateParameters',
            model_properties: {
              tags: {
                required: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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
