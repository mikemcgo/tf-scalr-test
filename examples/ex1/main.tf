provider "azurerm" {
  version = "=2.0.0"
  features {}
  skip_provider_registration = true
  subscription_id            = var.subscription-id
  tenant_id                  = var.tenant-id
}

terraform {
  backend "azurerm" {}
}

module "standard-subscription-roles" {
  source = "../../modules/subscription-access"

  subscription-id    = var.subscription-id
  subscription-owner = azuread_group.test_group.name

  subscription-ops = azuread_group.test_ops_group.name

  automation-teams = azuread_group.test_auto_group.name

  support-team = azuread_group.test_support_group.name

  security-operations-team = azuread_group.test_sec_ops_group.name
}

resource "azuread_group" "test_group" {
  name = "testing-group"
}

resource "azuread_group" "test_ops_group" {
  name = "test_ops_group"
}

resource "azuread_group" "test_auto_group" {
  name = "test-auto-group"
}

resource "azuread_group" "test_support_group" {
  name = "test_ops_group_2"
}
resource "azuread_group" "test_sec_ops_group" {
  name = "testing-sec-ops"
}
