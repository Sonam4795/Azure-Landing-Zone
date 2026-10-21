terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }

  #   backend "azurerm" {
  #   resource_group_name  = "dev-rg"
  #   storage_account_name = "devstg12345 "
  #   container_name       = "devstgcontainer"
  #   key                  = "terraform.tfstate"

  # }
}

provider "azurerm" {
  features {}

  subscription_id = "0c914ba5-bb00-4e4a-a8f4-a29b7f589d42"
  tenant_id       = "c6592adb-9542-4674-bd48-97800f7812f1"
}