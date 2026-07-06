variable "virtual_network_peerings" {
  description = <<EOT
Map of virtual_network_peerings, attributes below
Required:
    - name
    - remote_virtual_network_id
    - resource_group_name
    - virtual_network_name
Optional:
    - allow_forwarded_traffic
    - allow_gateway_transit
    - allow_virtual_network_access
    - local_subnet_names
    - only_ipv6_peering_enabled
    - peer_complete_virtual_networks_enabled
    - remote_subnet_names
    - triggers
    - use_remote_gateways
EOT

  type = map(object({
    name                                   = string
    remote_virtual_network_id              = string
    resource_group_name                    = string
    virtual_network_name                   = string
    allow_forwarded_traffic                = optional(bool) # Default: false
    allow_gateway_transit                  = optional(bool) # Default: false
    allow_virtual_network_access           = optional(bool) # Default: true
    local_subnet_names                     = optional(list(string))
    only_ipv6_peering_enabled              = optional(bool)
    peer_complete_virtual_networks_enabled = optional(bool) # Default: true
    remote_subnet_names                    = optional(list(string))
    triggers                               = optional(map(string))
    use_remote_gateways                    = optional(bool) # Default: false
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_peerings : (
        v.local_subnet_names == null || (length(v.local_subnet_names) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_peerings : (
        v.remote_subnet_names == null || (length(v.remote_subnet_names) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_network_peering's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: remote_virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] !ok
  # path: remote_virtual_network_id
  #   source:    [from commonids.ValidateVirtualNetworkID] err != nil
}

