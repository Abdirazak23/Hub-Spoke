module "hub_network" {
  source = "git::https://github.com/Abdirazak23/Central-library.git//Terraform-Modules/Modules/hub-vnet?ref=main"

  hub-vnet-rg              = var.hub-vnet-rg
  location                 = var.location
  vnet_name                = var.vnet_name
  address_space            = var.address_space
  gateway_name             = var.gateway_name
  subnet_name              = var.subnet_name
  gateway_subnet_prefix    = var.gateway_subnet_prefix
  firewall_subnet_prefix   = var.firewall_subnet_prefix
  management_subnet_prefix = var.management_subnet_prefix

}

module "spoke_network" {
  source = "git::https://github.com/Abdirazak23/Central-library.git//Terraform-Modules/Modules/spoke-vnet?ref=main"

  spoke-vnet-rg       = var.spoke-vnet-rg
  vnet_name_spoke     = var.vnet_name_spoke
  location            = var.location
  subnet01_name       = var.subnet01_name
  subnet02_name       = var.subnet02_name
  address_space_spoke = var.address_space_spoke
  subnet01_prefix     = var.subnet01_prefix
  subnet02_prefix     = var.subnet02_prefix

}

#module "vnet_peering" {
#  source = "git::https://github.com/Abdirazak23/Central-library.git//Terraform-Modules/Modules/vnet-peering?ref=main"
#
#  hub_vnet_name = module.hub_network.vnet_name
#  hub_rg_name   = module.hub_network.rg_name
#  hub_vnet_id   = module.hub_network.vnet_id
#
#  spoke_vnet_name = module.spoke_network.vnet_name
#  spoke_rg_name   = module.spoke_network.rg_name
#  spoke_vnet_id   = module.spoke_network.vnet_id
#  vnet_name_spoke_id = module.spoke_network.vnet_id
#  spoke_vnet_name = module.spoke_network.vnet_name
#  spoke_rg_name   = module.spoke_network.rg_name
#  spoke_vnet_id   = module.spoke_network.vnet_id
#
#  vnet_name_spoke = var.vnet_name_spoke
#  spoke-vnet-rg   = var.spoke-vnet-rg
#
#  depends_on = [
#    module.hub_network,
#    module.spoke_network
#  ]
#}