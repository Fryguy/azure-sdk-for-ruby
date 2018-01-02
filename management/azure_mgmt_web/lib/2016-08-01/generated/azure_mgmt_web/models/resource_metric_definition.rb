# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Metadata for the metrics.
    #
    class ResourceMetricDefinition < ProxyOnlyResource

      include MsRestAzure

      # @return [ResourceMetricName] Name of the metric.
      attr_accessor :resource_metric_definition_name

      # @return [String] Unit of the metric.
      attr_accessor :unit

      # @return [String] Primary aggregation type.
      attr_accessor :primary_aggregation_type

      # @return [Array<ResourceMetricAvailability>] List of time grains
      # supported for the metric together with retention period.
      attr_accessor :metric_availabilities

      # @return [String] Resource URI.
      attr_accessor :resource_uri

      # @return [String] Resource ID.
      attr_accessor :resource_metric_definition_id

      # @return [Hash{String => String}] Properties.
      attr_accessor :properties


      #
      # Mapper for ResourceMetricDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceMetricDefinition',
          type: {
            name: 'Composite',
            class_name: 'ResourceMetricDefinition',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              resource_metric_definition_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceMetricName'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unit',
                type: {
                  name: 'String'
                }
              },
              primary_aggregation_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryAggregationType',
                type: {
                  name: 'String'
                }
              },
              metric_availabilities: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metricAvailabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceMetricAvailabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceMetricAvailability'
                      }
                  }
                }
              },
              resource_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceUri',
                type: {
                  name: 'String'
                }
              },
              resource_metric_definition_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.id',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.properties',
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
