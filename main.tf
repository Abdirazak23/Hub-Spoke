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
  source = "git::https://github.com/Abdirazak23/Central-library.git//Terraform-Modules/Modules/spoke-vnet?ref=main"

  hub-vnet-rg              = var.hub-vnet-rg
  location                 = var.location
  vnet_name                = var.vnet_name
  address_space            = var.address_space
  gateway_name             = var.gateway_name
  subnet_name              = var.subnet_name
  gateway_subnet_prefix    = var.gateway_subnet_prefix
  firewall_subnet_prefix   = var.firewall_subnet_prefix
  management_subnet_prefix = var.management_subnet_prefix
  spoke-vnet-rg            = var.spoke-vnet-rg
  vnet_name_spoke          = var.vnet_name_spoke
  address_space_spoke      = var.address_space_spoke
  Subnet01_prefix          = var.Subnet01_prefix
  Subnet02_prefix          = var.Subnet02_prefix
}