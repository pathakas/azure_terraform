variable "rg_location" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "rg_name" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "rg_managed_by" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default = "Ashutosh Pathak"
}

variable "rg_tags" {
  type        = map(string)
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}