variable "endpoints_lookup" {
  description = <<EOT
Map of endpoints_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
  }))
}

