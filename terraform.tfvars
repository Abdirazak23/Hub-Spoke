hub-vnet-rg              = "Vnet"
location                 = "uksouth"
vnet_name                = "vnet"
gateway_name             = "hub-gw"
subnet_name              = "snet-hub-01"
address_space            = ["10.0.0.0/16"]
gateway_subnet_prefix    = ["10.0.0.32/27"]
firewall_subnet_prefix   = ["10.0.0.64/27"]
management_subnet_prefix = ["10.0.0.96/27"]

#spoke vars

spoke-vnet-rg            = "Vnet"
vnet_name_spoke          = "vnet"
address_space_spoke      = ["10.1.0.0/16"]
Subnet01_prefix          = ["10.1.0.32/27"]
Subnet02_prefix          = ["10.1.0.64/27"]
