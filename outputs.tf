output "virtual_network_peerings" {
  description = "All virtual_network_peering resources"
  value       = azurerm_virtual_network_peering.virtual_network_peerings
}
output "virtual_network_peerings_allow_forwarded_traffic" {
  description = "List of allow_forwarded_traffic values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.allow_forwarded_traffic]
}
output "virtual_network_peerings_allow_gateway_transit" {
  description = "List of allow_gateway_transit values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.allow_gateway_transit]
}
output "virtual_network_peerings_allow_virtual_network_access" {
  description = "List of allow_virtual_network_access values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.allow_virtual_network_access]
}
output "virtual_network_peerings_local_subnet_names" {
  description = "List of local_subnet_names values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.local_subnet_names]
}
output "virtual_network_peerings_name" {
  description = "List of name values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.name]
}
output "virtual_network_peerings_only_ipv6_peering_enabled" {
  description = "List of only_ipv6_peering_enabled values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.only_ipv6_peering_enabled]
}
output "virtual_network_peerings_peer_complete_virtual_networks_enabled" {
  description = "List of peer_complete_virtual_networks_enabled values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.peer_complete_virtual_networks_enabled]
}
output "virtual_network_peerings_remote_subnet_names" {
  description = "List of remote_subnet_names values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.remote_subnet_names]
}
output "virtual_network_peerings_remote_virtual_network_id" {
  description = "List of remote_virtual_network_id values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.remote_virtual_network_id]
}
output "virtual_network_peerings_resource_group_name" {
  description = "List of resource_group_name values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.resource_group_name]
}
output "virtual_network_peerings_triggers" {
  description = "List of triggers values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.triggers]
}
output "virtual_network_peerings_use_remote_gateways" {
  description = "List of use_remote_gateways values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.use_remote_gateways]
}
output "virtual_network_peerings_virtual_network_name" {
  description = "List of virtual_network_name values across all virtual_network_peerings"
  value       = [for k, v in azurerm_virtual_network_peering.virtual_network_peerings : v.virtual_network_name]
}

