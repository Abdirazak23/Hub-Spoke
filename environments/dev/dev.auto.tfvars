location    = "uksouth"
environment = "dev"

# Hub Subnets
hub_vnet_cidr          = ["10.0.0.0/16"]
firewall_subnet_cidr   = ["10.0.0.0/26"]
gateway_subnet_cidr    = ["10.0.0.64/27"]
management_subnet_cidr = ["10.0.0.96/28"]

# Spoke Subnets
spoke_vnet_cidr     = ["10.0.1.0/16"]
spoke_subnet01_cidr = ["10.0.1.0/28"]
spoke_subnet02_cidr = ["10.0.1.16/28"]