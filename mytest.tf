terraform {
  required_version = ">=1.0.11"

}

provider "azurerm" {
  features {}

  client_id       = "6a3baa3e-0d7c-4805-8496-da0e24b93510"
  client_secret   = "giA7Q~vkA5PmuCMHUSEV2TDPuSe9mKzxQvYmw"
  tenant_id       = "051173eb-ee17-4e41-8995-f56af1cee886"
  subscription_id = "6ed44b8b-06a3-4f16-8837-b21409d5dad6"
}

resource "azurerm_resource_group" "masterrg" {
  name     = "masterrg"
  location = "eastus"
}

resource "azurerm_virtual_network" "mastervnet" {
  name                = "mastervnet"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.masterrg.name
  address_space       = ["10.0.0.0/16"]
}


