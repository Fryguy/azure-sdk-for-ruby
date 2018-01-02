# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan group details.
    #
    class RecoveryPlanGroup

      include MsRestAzure

      # @return [RecoveryPlanGroupType] The group type. Possible values
      # include: 'Shutdown', 'Boot', 'Failover'
      attr_accessor :group_type

      # @return [Array<RecoveryPlanProtectedItem>] The list of protected items.
      attr_accessor :replication_protected_items

      # @return [Array<RecoveryPlanAction>] The start group actions.
      attr_accessor :start_group_actions

      # @return [Array<RecoveryPlanAction>] The end group actions.
      attr_accessor :end_group_actions


      #
      # Mapper for RecoveryPlanGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanGroup',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanGroup',
            model_properties: {
              group_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'groupType',
                type: {
                  name: 'Enum',
                  module: 'RecoveryPlanGroupType'
                }
              },
              replication_protected_items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicationProtectedItems',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecoveryPlanProtectedItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanProtectedItem'
                      }
                  }
                }
              },
              start_group_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startGroupActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecoveryPlanActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanAction'
                      }
                  }
                }
              },
              end_group_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endGroupActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecoveryPlanActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPlanAction'
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
