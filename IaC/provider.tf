terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-eventterminator-tfstate"
    storage_account_name = "terraformpersistance551"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}