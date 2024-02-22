resource "azurerm_resource_group" "example" {
  name       = var.rg_name
  location   = var.rg_location
  tags       = var.rg_tags
  managed_by = var.rg_managed_by
}
