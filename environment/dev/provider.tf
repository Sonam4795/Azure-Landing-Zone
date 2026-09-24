terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "JD-group"
    storage_account_name = "storagegoldselver"
    container_name       = "stplcontener"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "3932b5be-57e9-448f-8092-d5058b82f170"
}