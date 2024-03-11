variable "resourceCollection" {
  type = list(object({
    location           = string
    name               = string
    rg_managed_by      = optional(string, "Ashutosh Pathak")
    vnet_address_space = optional(list(string), ["10.0.0.0/16"])
    tags = optional(map(string), {
      "Environment" = "Production",
      "Company"     = "MassMutual"
    })
  }))
  default     = []
  description = "Group of resource group to create"
}

