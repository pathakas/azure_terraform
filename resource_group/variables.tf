variable "location" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  
}

variable "name" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "rg_managed_by" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  default = "Ashutosh Pathak"
}

variable "tags" {
  type        = map(string)
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "vnet_address_space"{
  type = list(string)
  default = ["10.0.0.0/16"]
}


