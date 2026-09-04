# Hub Network Variables
hub-vnet-rg              = "hub"
location                 = "uksouth"
vnet_name                = "hub"
gateway_name             = "hub-gw"
subnet_name              = "snet-hub-01"
address_space            = ["10.0.0.0/16"]

# GatewaySubnet requires minimum /27 (32 IPs)
gateway_subnet_prefix    = ["10.0.1.0/27"]

# AzureFirewallSubnet requires minimum /26 (64 IPs)
firewall_subnet_prefix   = ["10.0.2.0/26"]

# Management Subnet
management_subnet_prefix = ["10.0.3.0/27"]

# Spoke Network Variables
spoke-vnet-rg            = "spoke01"
vnet_name_spoke          = "spoke01"
address_space_spoke      = ["10.1.0.0/16"]
Subnet01_prefix          = ["10.1.1.0/24"]
Subnet02_prefix          = ["10.1.2.0/24"]