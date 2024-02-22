data "azurerm_resource_group" "default" {
  name = "NetworkWatcherRG"
}

output "subscription" {
  value = element(split("/", data.azurerm_resource_group.default.id), 4)
}
