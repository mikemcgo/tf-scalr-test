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

module "rg-role" {
  source = "../../modules/role-assignment"

  scope-id = var.subscription-id
  group-name = var.group-name
  scope-type = "subscriptions/${var.subscription-id}/resourceGroups"
  role-name = "Reader"
}
