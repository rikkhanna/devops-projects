terraform {
  required_version = ">=0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfrg"
    storage_account_name = "rishtfstateaks"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}
