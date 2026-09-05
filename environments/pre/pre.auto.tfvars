location    = "uksouth"
environment = "pre"

# Hub Subnets (10.10.0.0/16 Range)
hub_vnet_cidr          = ["10.10.0.0/16"]
firewall_subnet_cidr   = ["10.10.0.0/26"]
gateway_subnet_cidr    = ["10.10.0.64/27"]
management_subnet_cidr = ["10.10.0.96/28"]

# Spoke Subnets (10.10.1.0/16 Range)
spoke_vnet_cidr     = ["10.10.1.0/16"]
spoke_subnet01_cidr = ["10.10.1.0/28"]
spoke_subnet02_cidr = ["10.10.1.16/28"]