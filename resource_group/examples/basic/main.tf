module "resource_group" {
  source        = "../../"
  rg_name       = var.rg_name
  rg_location   = var.rg_location
  rg_tags       = var.rg_tags
  rg_managed_by = var.rg_managed_by
}