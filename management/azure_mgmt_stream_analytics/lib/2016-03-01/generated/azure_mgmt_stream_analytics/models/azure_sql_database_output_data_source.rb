# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes an Azure SQL database output data source.
    #
    class AzureSqlDatabaseOutputDataSource < OutputDataSource

      include MsRestAzure


      def initialize
        @type = "Microsoft.Sql/Server/Database"
      end

      attr_accessor :type

      # @return [String] The name of the SQL server containing the Azure SQL
      # database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :server

      # @return [String] The name of the Azure SQL database. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :database

      # @return [String] The user name that will be used to connect to the
      # Azure SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :user

      # @return [String] The password that will be used to connect to the Azure
      # SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :password

      # @return [String] The name of the table in the Azure SQL database.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :table


      #
      # Mapper for AzureSqlDatabaseOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Sql/Server/Database',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlDatabaseOutputDataSource',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.server',
                type: {
                  name: 'String'
                }
              },
              database: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.database',
                type: {
                  name: 'String'
                }
              },
              user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.user',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.table',
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
