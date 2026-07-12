output "virtual_network_peerings_id" {
  description = "Map of id values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.id }
}
output "virtual_network_peerings_allow_forwarded_traffic" {
  description = "Map of allow_forwarded_traffic values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_forwarded_traffic }
}
output "virtual_network_peerings_allow_gateway_transit" {
  description = "Map of allow_gateway_transit values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_gateway_transit }
}
output "virtual_network_peerings_allow_virtual_network_access" {
  description = "Map of allow_virtual_network_access values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_virtual_network_access }
}
output "virtual_network_peerings_local_subnet_names" {
  description = "Map of local_subnet_names values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.local_subnet_names }
}
output "virtual_network_peerings_name" {
  description = "Map of name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.name }
}
output "virtual_network_peerings_only_ipv6_peering_enabled" {
  description = "Map of only_ipv6_peering_enabled values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.only_ipv6_peering_enabled }
}
output "virtual_network_peerings_peer_complete_virtual_networks_enabled" {
  description = "Map of peer_complete_virtual_networks_enabled values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.peer_complete_virtual_networks_enabled }
}
output "virtual_network_peerings_remote_subnet_names" {
  description = "Map of remote_subnet_names values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.remote_subnet_names }
}
output "virtual_network_peerings_remote_virtual_network_id" {
  description = "Map of remote_virtual_network_id values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.remote_virtual_network_id }
}
output "virtual_network_peerings_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.resource_group_name }
}
output "virtual_network_peerings_triggers" {
  description = "Map of triggers values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.triggers }
}
output "virtual_network_peerings_use_remote_gateways" {
  description = "Map of use_remote_gateways values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.use_remote_gateways }
}
output "virtual_network_peerings_virtual_network_name" {
  description = "Map of virtual_network_name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.virtual_network_name }
}

