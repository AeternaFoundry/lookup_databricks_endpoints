data "databricks_endpoints" "endpoints_lookup" {
  for_each = var.endpoints_lookup

  parent    = each.value.parent
  page_size = each.value.page_size
}

