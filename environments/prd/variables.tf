variable "location" {
  type        = string
  description = "Azure region for production resources"
  default     = "uksouth"
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "prd"
}

variable "hub_vnet_cidr" {
  type        = list(string)
  description = "Address space for Hub VNet"
}

variable "firewall_subnet_cidr" {
  type        = list(string)
  description = "CIDR for AzureFirewallSubnet"
}

variable "gateway_subnet_cidr" {
  type        = list(string)
  description = "CIDR for GatewaySubnet"
}

variable "management_subnet_cidr" {
  type        = list(string)
  description = "CIDR for Management Subnet"
}

variable "spoke_vnet_cidr" {
  type        = list(string)
  description = "Address space for Spoke VNet"
}

variable "spoke_subnet01_cidr" {
  type        = list(string)
  description = "CIDR for Spoke Subnet 01"
}

variable "spoke_subnet02_cidr" {
  type        = list(string)
  description = "CIDR for Spoke Subnet 02"
}