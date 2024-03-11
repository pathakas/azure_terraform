module "resource_group" {
  source = "../../"
  #for_each      = [ for index, value in var.resourceCollection : value]
  for_each           = { for index, value in var.resourceCollection : index => value }
  name               = each.value.name
  location           = each.value.location
  tags               = each.value.tags
  rg_managed_by      = each.value.rg_managed_by
  vnet_address_space = each.value.vnet_address_space
}

