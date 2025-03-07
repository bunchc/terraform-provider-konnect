terraform {
  required_providers {
    konnect = {
      source = "github.com/scastria/konnect"
    }
  }
}

provider "konnect" {
}

#resource "konnect_plugin" "P" {
#  runtime_group_id = data.konnect_runtime_group.RG.id
#  name = "rate-limiting"
#  protocols = [
#    "grpc",
#    "grpcs",
#    "http",
#    "https"
#  ]
#  config_json = <<EOF
#{
#  "minute": 8,
#  "second": 7
#}
#EOF
#}

#resource "konnect_consumer" "C" {
#  runtime_group_id = data.konnect_runtime_group.RG.id
#  username = "Shawn"
#  custom_id = "Bob"
#}

#resource "konnect_service" "S" {
#  runtime_group_id = data.konnect_runtime_group.RG.id
#  host = "mockbin.org"
#  name = "TFTest"
#}

#resource "konnect_route" "R" {
#  runtime_group_id = data.konnect_runtime_group.RG.id
#  name = "TFRoute"
#  protocols = ["http"]
#  methods = ["GET"]
#  paths = ["/tf"]
#  service_id = konnect_service.S.service_id
#  header {
#    name = "sear"
#    values = ["kevin"]
#  }
#}

#data "konnect_nodes" "Ns" {
#  runtime_group_id = data.konnect_runtime_group.RG.id
#}

#resource "konnect_user_role" "UR" {
#  user_id = data.konnect_user.U.id
#  entity_id = data.konnect_runtime_group.RG.id
#  entity_type_display_name = "Runtime Groups"
#  entity_region = "us"
#  role_display_name = data.konnect_role.R.display_name
#}

#data "konnect_team_role" "TR" {
#  team_id = data.konnect_team.T.id
#  entity_type_display_name = "Runtime Groups"
#}

#data "konnect_role" "R" {
#  group_display_name = "Runtime Groups"
#  display_name = "Admin"
#}

#resource "konnect_team" "T" {
#  name = "ShawnTest"
#  description = "testing"
#}

#resource "konnect_team_role" "TR" {
#  team_id = konnect_team.T.id
#  entity_id = konnect_runtime_group.RG.id
#  entity_type_display_name = "Runtime Groups"
#  entity_region = "us"
#  role_display_name = data.konnect_role.R.display_name
#}

#data "konnect_team" "T" {
#  name = "runtime-admin"
#}

#resource "konnect_user" "U" {
#  email = "jblow@example.com"
#  full_name = "Joe Blow"
#  preferred_name = "Joe"
#}

#data "konnect_user" "U" {
#  search_full_name = "Julia"
#}

#resource "konnect_team_user" "TU" {
#  team_id = konnect_team.T.id
#  user_id = data.konnect_user.U.id
#}

#resource "konnect_identity_provider" "IP" {
#  issuer = "https://greenst.okta.com/oauth2/default"
#  client_id = "0oambh387v9ETDgCz2p7"
#  login_path = "gsa"
#  scopes = [
#    "email",
#    "openid",
#    "profile"
#  ]
#  email_claim_mapping = "email"
#  name_claim_mapping = "name"
#  groups_claim_mapping = "groups"
#}

#resource "konnect_authentication_settings" "AS" {
#  basic_auth_enabled = true
#  oidc_auth_enabled = true
#  idp_mapping_enabled = false
#  konnect_mapping_enabled = true
#}

#resource "konnect_runtime_group" "RG" {
#  name = "ShawnRG"
#  description = "testing"
#}

data "konnect_runtime_group" "RG" {
  name = "development"
}

data "konnect_consumer" "C" {
  runtime_group_id = data.konnect_runtime_group.RG.id
  search_username = "a"
#  search_custom_id = null
}