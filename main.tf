terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

provider "azurerm" {
  features{}
  # Configuration options
}

resource "azurerm_resource_group" "rg1" {
  name     = "southindiaResourceGroup"
  location = "southindia"
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "myTFVnet1"
  address_space       = ["10.2.0.0/16"]
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}
