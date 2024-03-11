resource "azurerm_resource_group" "example" {
  name       = format("%s%s", var.name, "-rg")
  location   = var.location
  tags       = var.tags
  managed_by = var.rg_managed_by
}

resource "azurerm_virtual_network" "example" {
  for_each            = { for index, value in var.vnet_address_space : index => value }
  name                = format("%s%s%s", var.name, each.key, "-vnet")
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = tolist(split(",", each.value))
  tags                = var.tags
}

