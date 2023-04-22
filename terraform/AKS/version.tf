terraform {
  required_version = ">=0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  #   backend "" {
  #   }
}


provider "azurerm" {
  features {}
}
provider "azuread" {
  tenant_id = var.TENANT_ID
}