terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }

  backend "azurerm" {
  resource_group_name  = "dev-rg"
  storage_account_name = "devstg12345 "
  container_name       = "devstgcontainer"
  key                  = "terraform.tfstate"
  
}

provider "azurerm" {
  features {}

  subscription_id = "3932b5be-57e9-448f-8092-d5058b82f170"
}