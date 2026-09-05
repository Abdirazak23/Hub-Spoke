terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prd"
    storage_account_name = "sttfstateprd01"
    container_name       = "tfstate"
    key                  = "prd.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}