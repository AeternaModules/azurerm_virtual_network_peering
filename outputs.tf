output "virtual_network_peerings_id" {
  description = "Map of id values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_network_peerings_allow_forwarded_traffic" {
  description = "Map of allow_forwarded_traffic values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_forwarded_traffic if v.allow_forwarded_traffic != null }
}
output "virtual_network_peerings_allow_gateway_transit" {
  description = "Map of allow_gateway_transit values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_gateway_transit if v.allow_gateway_transit != null }
}
output "virtual_network_peerings_allow_virtual_network_access" {
  description = "Map of allow_virtual_network_access values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.allow_virtual_network_access if v.allow_virtual_network_access != null }
}
output "virtual_network_peerings_local_subnet_names" {
  description = "Map of local_subnet_names values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.local_subnet_names if v.local_subnet_names != null && length(v.local_subnet_names) > 0 }
}
output "virtual_network_peerings_name" {
  description = "Map of name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_network_peerings_only_ipv6_peering_enabled" {
  description = "Map of only_ipv6_peering_enabled values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.only_ipv6_peering_enabled if v.only_ipv6_peering_enabled != null }
}
output "virtual_network_peerings_peer_complete_virtual_networks_enabled" {
  description = "Map of peer_complete_virtual_networks_enabled values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.peer_complete_virtual_networks_enabled if v.peer_complete_virtual_networks_enabled != null }
}
output "virtual_network_peerings_remote_subnet_names" {
  description = "Map of remote_subnet_names values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.remote_subnet_names if v.remote_subnet_names != null && length(v.remote_subnet_names) > 0 }
}
output "virtual_network_peerings_remote_virtual_network_id" {
  description = "Map of remote_virtual_network_id values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.remote_virtual_network_id if v.remote_virtual_network_id != null && length(v.remote_virtual_network_id) > 0 }
}
output "virtual_network_peerings_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_network_peerings_triggers" {
  description = "Map of triggers values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.triggers if v.triggers != null && length(v.triggers) > 0 }
}
output "virtual_network_peerings_use_remote_gateways" {
  description = "Map of use_remote_gateways values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.use_remote_gateways if v.use_remote_gateways != null }
}
output "virtual_network_peerings_virtual_network_name" {
  description = "Map of virtual_network_name values across all virtual_network_peerings, keyed the same as var.virtual_network_peerings"
  value       = { for k, v in azurerm_virtual_network_peering.virtual_network_peerings : k => v.virtual_network_name if v.virtual_network_name != null && length(v.virtual_network_name) > 0 }
}

