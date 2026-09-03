output "vnet_id" {
  value       = module.hub_network.vnet_id
  description = "The ID of the hub virtual network."
}

output "vnet_name" {
  value       = module.hub_network.vnet_name
  description = "The name of the hub virtual network."
}

output "gateway_subnet_id" {
  value       = azurerm_subnet.gateway_subnet.id
  description = "The ID of the GatewaySubnet."
}

output "firewall_subnet_id" {
  value       = azurerm_subnet.firewall_subnet.id
  description = "The ID of the AzureFirewallSubnet."
}