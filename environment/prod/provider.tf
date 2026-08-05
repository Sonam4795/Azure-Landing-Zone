terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pinki"
    storage_account_name = "whitedrum"
    container_name       = "stgcontainer"
    key                  = "terraform.tfkey"

  }
}

provider "azurerm" {
  features {}

  subscription_id = "5862e26b-b181-48c8-b8fd-a61fd0a2897e"
  tenant_id = "b5e81c4f-1b3b-460d-b7ce-70b3ba185e56"
}