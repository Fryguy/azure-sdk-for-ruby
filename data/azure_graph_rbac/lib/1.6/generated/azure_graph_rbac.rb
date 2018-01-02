# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '1.6/generated/azure_graph_rbac/module_definition'
require 'ms_rest_azure'

module Azure::GraphRbac::V1_6
  autoload :Objects,                                            '1.6/generated/azure_graph_rbac/objects.rb'
  autoload :Applications,                                       '1.6/generated/azure_graph_rbac/applications.rb'
  autoload :Groups,                                             '1.6/generated/azure_graph_rbac/groups.rb'
  autoload :ServicePrincipals,                                  '1.6/generated/azure_graph_rbac/service_principals.rb'
  autoload :Users,                                              '1.6/generated/azure_graph_rbac/users.rb'
  autoload :Domains,                                            '1.6/generated/azure_graph_rbac/domains.rb'
  autoload :GraphRbacClient,                                    '1.6/generated/azure_graph_rbac/graph_rbac_client.rb'

  module Models
    autoload :GroupGetMemberGroupsParameters,                     '1.6/generated/azure_graph_rbac/models/group_get_member_groups_parameters.rb'
    autoload :GraphError,                                         '1.6/generated/azure_graph_rbac/models/graph_error.rb'
    autoload :GroupGetMemberGroupsResult,                         '1.6/generated/azure_graph_rbac/models/group_get_member_groups_result.rb'
    autoload :PasswordCredential,                                 '1.6/generated/azure_graph_rbac/models/password_credential.rb'
    autoload :CheckGroupMembershipParameters,                     '1.6/generated/azure_graph_rbac/models/check_group_membership_parameters.rb'
    autoload :RequiredResourceAccess,                             '1.6/generated/azure_graph_rbac/models/required_resource_access.rb'
    autoload :CheckGroupMembershipResult,                         '1.6/generated/azure_graph_rbac/models/check_group_membership_result.rb'
    autoload :ApplicationUpdateParameters,                        '1.6/generated/azure_graph_rbac/models/application_update_parameters.rb'
    autoload :ServicePrincipalCreateParameters,                   '1.6/generated/azure_graph_rbac/models/service_principal_create_parameters.rb'
    autoload :ApplicationListResult,                              '1.6/generated/azure_graph_rbac/models/application_list_result.rb'
    autoload :ServicePrincipal,                                   '1.6/generated/azure_graph_rbac/models/service_principal.rb'
    autoload :KeyCredentialsUpdateParameters,                     '1.6/generated/azure_graph_rbac/models/key_credentials_update_parameters.rb'
    autoload :ServicePrincipalListResult,                         '1.6/generated/azure_graph_rbac/models/service_principal_list_result.rb'
    autoload :PasswordCredentialsUpdateParameters,                '1.6/generated/azure_graph_rbac/models/password_credentials_update_parameters.rb'
    autoload :PasswordProfile,                                    '1.6/generated/azure_graph_rbac/models/password_profile.rb'
    autoload :GetObjectsResult,                                   '1.6/generated/azure_graph_rbac/models/get_objects_result.rb'
    autoload :UserBase,                                           '1.6/generated/azure_graph_rbac/models/user_base.rb'
    autoload :GroupCreateParameters,                              '1.6/generated/azure_graph_rbac/models/group_create_parameters.rb'
    autoload :GroupAddMemberParameters,                           '1.6/generated/azure_graph_rbac/models/group_add_member_parameters.rb'
    autoload :ADGroup,                                            '1.6/generated/azure_graph_rbac/models/adgroup.rb'
    autoload :KeyCredential,                                      '1.6/generated/azure_graph_rbac/models/key_credential.rb'
    autoload :ApplicationCreateParameters,                        '1.6/generated/azure_graph_rbac/models/application_create_parameters.rb'
    autoload :DomainListResult,                                   '1.6/generated/azure_graph_rbac/models/domain_list_result.rb'
    autoload :KeyCredentialListResult,                            '1.6/generated/azure_graph_rbac/models/key_credential_list_result.rb'
    autoload :SignInName,                                         '1.6/generated/azure_graph_rbac/models/sign_in_name.rb'
    autoload :AADObject,                                          '1.6/generated/azure_graph_rbac/models/aadobject.rb'
    autoload :Domain,                                             '1.6/generated/azure_graph_rbac/models/domain.rb'
    autoload :ResourceAccess,                                     '1.6/generated/azure_graph_rbac/models/resource_access.rb'
    autoload :UserGetMemberGroupsParameters,                      '1.6/generated/azure_graph_rbac/models/user_get_member_groups_parameters.rb'
    autoload :PasswordCredentialListResult,                       '1.6/generated/azure_graph_rbac/models/password_credential_list_result.rb'
    autoload :UserGetMemberGroupsResult,                          '1.6/generated/azure_graph_rbac/models/user_get_member_groups_result.rb'
    autoload :Application,                                        '1.6/generated/azure_graph_rbac/models/application.rb'
    autoload :UserListResult,                                     '1.6/generated/azure_graph_rbac/models/user_list_result.rb'
    autoload :GroupListResult,                                    '1.6/generated/azure_graph_rbac/models/group_list_result.rb'
    autoload :GetObjectsParameters,                               '1.6/generated/azure_graph_rbac/models/get_objects_parameters.rb'
    autoload :UserCreateParameters,                               '1.6/generated/azure_graph_rbac/models/user_create_parameters.rb'
    autoload :UserUpdateParameters,                               '1.6/generated/azure_graph_rbac/models/user_update_parameters.rb'
    autoload :User,                                               '1.6/generated/azure_graph_rbac/models/user.rb'
    autoload :UserType,                                           '1.6/generated/azure_graph_rbac/models/user_type.rb'
  end
end
