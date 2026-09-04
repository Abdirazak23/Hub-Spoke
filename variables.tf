variable "hub-vnet-rg" {
  type        = string
  description = "Name component for the hub resource group"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "gateway_name" {
  type        = string
  description = "The name of the VPN/ExpressRoute Gateway."
}

variable "subnet_name" {
  type        = string
  description = "The name of the Subnet."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "gateway_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the GatewaySubnet."
}

variable "firewall_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the AzureFirewallSubnet."
}

variable "management_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the Management Subnet."
}

variable "spoke-vnet-rg" {
  type        = string
  description = "Name component for the spoke resource group"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
}

variable "vnet_name_spoke" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space_spoke" {
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "subnet01_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "subnet02_prefix" {
  type        = list(string)
  description = "Address prefix for the Subnet."
}

variable "subnet01_name" {
  type        = string
  description = "The name of the Subnet."
}

variable "subnet02_name" {
  type        = string
  description = "The name of the Subnet."
}