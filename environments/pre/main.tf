module "hub_network" {
  source = "../../modules/hub-network"

  location               = variable.location
  resource_group_name    = "rg-hub-${var.environment}-01"
  vnet_name              = "vnet-hub-${var.environment}-01"
  vnet_address_space     = variable.hub_vnet_cidr
  firewall_subnet_cidr   = variable.firewall_subnet_cidr
  gateway_subnet_cidr    = variable.gateway_subnet_cidr
  management_subnet_cidr = variable.management_subnet_cidr
}

module "spoke_network" {
  source = "../../modules/spoke-network"

  location            = variable.location
  resource_group_name = "rg-spoke-${var.environment}-01"
  vnet_name           = "vnet-spoke-${var.environment}-01"
  vnet_address_space  = variable.spoke_vnet_cidr
  
  subnet01_name       = "snet-spoke-app-01"
  subnet01_cidr       = variable.spoke_subnet01_cidr

  subnet02_name       = "snet-spoke-db-01"
  subnet02_cidr       = variable.spoke_subnet02_cidr
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  name                      = "peer-hub-to-spoke-${var.environment}"
  resource_group_name       = module.hub_network.resource_group_name
  virtual_network_name      = module.hub_network.vnet_name
  remote_virtual_network_id = module.spoke_network.vnet_id

  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}

resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  name                      = "peer-spoke-to-hub-${var.environment}"
  resource_group_name       = module.spoke_network.resource_group_name
  virtual_network_name      = module.spoke_network.vnet_name
  remote_virtual_network_id = module.hub_network.vnet_id

  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}