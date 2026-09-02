terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # Note: AzureRM v5.0 is not released yet; standard practice is pinning major versions (~> 4.0)
    }
  }
}

provider "azurerm" {
  features {}
}

# Reference central library module
module "hub_network" {
  source = "git::https://github.com/Abdirazak23/Central-library/tree/main/Terraform-Modules/Modules/hub-vnet?ref=main"

  resource_group_name    = "var.resource_group_name"
  location               = "uksouth"
  vnet_name              = "hub"
  address_space          = ["10.0.0.0/16"]
  gateway_name           = "hub-gw"
  gateway_subnet_prefix  = "10.0.1.0/24"
  firewall_subnet_prefix = "10.0.2.0/24"
  management_subnet_prefix = "10.0.3.0/24"
}