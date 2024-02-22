resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.location
  tags = var.tags
  managed_by = var.managed_by
}

output name {
  value       = azurerm_resource_group.example.tags
}
