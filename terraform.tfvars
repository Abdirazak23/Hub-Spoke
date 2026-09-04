# Hub Network Variables
hub-vnet-rg              = "hub"
location                 = "uksouth"
vnet_name                = "hub"
gateway_name             = "hub-gw"
subnet_name              = "snet-hub-01"
address_space            = ["10.0.0.0/16"]
firewall_subnet_prefix   = ["10.0.0.0/26"] 
gateway_subnet_prefix    = ["10.0.0.64/27"] 
management_subnet_prefix = ["10.0.0.96/28"]

# Spoke Network Variables
spoke-vnet-rg            = "spoke01"
vnet_name_spoke          = "spoke01"
address_space_spoke      = ["10.0.1.0/16"]
Subnet01_prefix          = ["10.0.1.0/28"] 
Subnet02_prefix          = ["10.0.1.16/28"] 