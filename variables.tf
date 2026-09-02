variable "hub_vnet_rg_name" {
  type        = string
  description = "Name of the local Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "VNet name prefix"
}

variable "address_space" {
  type        = string
  description = "VNet IP range"
}

variable "gateway_name" {
  type        = string
  description = "Gateway name prefix"
}

variable "gateway_subnet_prefix" {
  type        = string
  description = "Gateway subnet CIDR"
}

variable "firewall_subnet_prefix" {
  type        = string
  description = "Firewall subnet CIDR"
}

variable "management_subnet_prefix" {
  type        = string
  description = "Management subnet CIDR"
}