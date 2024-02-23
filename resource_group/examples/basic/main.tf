module "resource_group" {
  source = "../../"
  #for_each      = [ for index, value in var.rgCollection : value]
  for_each      = { for index, value in var.rgCollection : index => value }
  rg_name       = each.value.rg_name
  rg_location   = each.value.rg_location
  rg_tags       = each.value.rg_tags
  rg_managed_by = each.value.rg_managed_by
}

