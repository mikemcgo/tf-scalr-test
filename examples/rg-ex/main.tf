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

resource "azurerm_resource_group" "ex" {
  name = "hopethisworks"
  location = "East US"
}

module "role-assignment" {
  source = "https://github.com/mikemcgo/tf-scalr-test/modules/role-assignment"

  scope-id = var.subscription-id
  group-name = "asdf"
  scope-type = "subscriptions"
  role-name = "Reader"
}