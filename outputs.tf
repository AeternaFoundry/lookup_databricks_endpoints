output "endpoints_lookup_items" {
  description = "Map of items values across all endpoints_lookup, keyed the same as var.endpoints_lookup except keys with no items are omitted"
  value       = { for k, v in data.databricks_endpoints.endpoints_lookup : k => v.items if v.items != null && length(v.items) > 0 }
}
output "endpoints_lookup_page_size" {
  description = "Map of page_size values across all endpoints_lookup, keyed the same as var.endpoints_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_endpoints.endpoints_lookup : k => v.page_size if v.page_size != null }
}
output "endpoints_lookup_parent" {
  description = "Map of parent values across all endpoints_lookup, keyed the same as var.endpoints_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_endpoints.endpoints_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}

