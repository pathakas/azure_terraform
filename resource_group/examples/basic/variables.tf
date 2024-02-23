variable "rgCollection" {
  type = list(object({
    rg_location   = string
    rg_name       = string
    rg_managed_by = optional(string, "Ashutosh Pathak")
    rg_tags = optional(map(string), {
      "Environment" = "Production",
      "Company"     = "MassMutual"
    })
  }))
  default     = []
  description = "Group of resource group to create"
}

