hub_vnet_rg_name         = "Vnet"
location                 = "uksouth"
vnet_name                = "vnet"
address_space            = ["10.0.0.0/16"]
gateway_name             = "hub-gw"
gateway_subnet_prefix    = "10.0.0.0/27"
firewall_subnet_prefix   = "10.0.0.32/27"
management_subnet_prefix = "10.0.0.64/27"