output "rg" {
  value = azurerm_resource_group.example
}

output "subscription" {
  value = element(split("/", data.azurerm_resource_group.default.id), 4)
}