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
