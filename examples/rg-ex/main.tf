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

