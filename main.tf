terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "hub_network" {
  source = "git::https://github.com/Abdirazak23/Central-library.git//Terraform-Modules/Modules/hub-vnet?ref=main"

  hub_vnet_rg_name         = "hub-${var.hub_vnet_rg_name}rg01"
  location                 = "var.location"
  vnet_name                = "hub-${var.vnet_name}01"
  address_space            = "var.address_space"
  gateway_name             = "hub-gw"
  subnet_name              = "snet-hub-01"
  gateway_subnet_prefix    = "var.gateway_subnet_prefix"
  firewall_subnet_prefix   = "var.firewall_subnet_prefix"
  management_subnet_prefix = "var.management_subnet_prefix"
}