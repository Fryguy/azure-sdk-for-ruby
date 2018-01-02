# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # The properties of a monitoring event.
    #
    class EventProperties

      include MsRestAzure

      # @return [String] The Id of the monitoring event.
      attr_accessor :event_code

      # @return [String] The event name.
      attr_accessor :description

      # @return [String] The type of the event. for example: VM Health, Server
      # Health, Job Failure etc.
      attr_accessor :event_type

      # @return [String] The friendly name of the source of the event on which
      # it is raised (for example, VM, VMM etc).
      attr_accessor :affected_object_friendly_name

      # @return [String] The severity of the event.
      attr_accessor :severity

      # @return [DateTime] The time of occurence of the event.
      attr_accessor :time_of_occurrence

      # @return [String] The ARM ID of the fabric.
      attr_accessor :fabric_id

      # @return [EventProviderSpecificDetails] The provider specific settings.
      attr_accessor :provider_specific_details

      # @return [EventSpecificDetails] The event specific settings.
      attr_accessor :event_specific_details

      # @return [Array<HealthError>] The list of errors / warnings capturing
      # details associated with the issue(s).
      attr_accessor :health_errors


      #
      # Mapper for EventProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventProperties',
          type: {
            name: 'Composite',
            class_name: 'EventProperties',
            model_properties: {
              event_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventCode',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventType',
                type: {
                  name: 'String'
                }
              },
              affected_object_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedObjectFriendlyName',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'severity',
                type: {
                  name: 'String'
                }
              },
              time_of_occurrence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeOfOccurrence',
                type: {
                  name: 'DateTime'
                }
              },
              fabric_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricId',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'EventProviderSpecificDetails',
                  class_name: 'EventProviderSpecificDetails'
                }
              },
              event_specific_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'EventSpecificDetails',
                  class_name: 'EventSpecificDetails'
                }
              },
              health_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
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
