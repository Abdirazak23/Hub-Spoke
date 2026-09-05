output "hub_vnet_id" {
  description = "ID of the Hub Virtual Network"
  value       = module.hub_network.vnet_id
}

output "spoke_vnet_id" {
  description = "ID of the Spoke Virtual Network"
  value       = module.spoke_network.vnet_id
}

output "firewall_subnet_id" {
  description = "ID of the Firewall Subnet"
  value       = module.hub_network.firewall_subnet_id
}