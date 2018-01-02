# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Contains information of estimated or observed impact on various metrics
    # for an Azure SQL Database, Server or Elastic Pool Recommended Action.
    #
    class RecommendedActionImpactRecord

      include MsRestAzure

      # @return [String] Gets the name of the impact dimension. e.g.,
      # CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
      attr_accessor :dimension_name

      # @return [String] Gets the name of the impact dimension. e.g.,
      # CPUChange, DiskSpaceChange, NumberOfQueriesAffected.
      attr_accessor :unit

      # @return [Float] Gets the absolute value of this dimension if
      # applicable. e.g., Number of Queries affected
      attr_accessor :absolute_value

      # @return [Float] Gets the absolute change in the value of this
      # dimension. e.g., Absolute Disk space change in Megabytes
      attr_accessor :change_value_absolute

      # @return [Float] Gets the relative change in the value of this
      # dimension. e.g., Relative Disk space change in Percentage
      attr_accessor :change_value_relative


      #
      # Mapper for RecommendedActionImpactRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecommendedActionImpactRecord',
          type: {
            name: 'Composite',
            class_name: 'RecommendedActionImpactRecord',
            model_properties: {
              dimension_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'dimensionName',
                type: {
                  name: 'String'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              absolute_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'absoluteValue',
                type: {
                  name: 'Double'
                }
              },
              change_value_absolute: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changeValueAbsolute',
                type: {
                  name: 'Double'
                }
              },
              change_value_relative: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changeValueRelative',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
