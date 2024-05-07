variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))

  validation {
    # Iterate over each resource group object that's passed through & check if location = uksouth or ukwest
    condition = alltrue([
      for rg in var.rgs : contains(["uksouth", "ukwest"], rg.location)
    ])

    error_message = "Location must be either 'uksouth' or 'ukwest'."
  }
}


variable "vnets" {
  type = map(object({
    vnet_name = string
    cidr      = list(string)
    location  = string
    rg        = string
  }))
}

variable "deploy_storage_accounts" {
  type = bool
}

# added default so if deploy_storage_accounts = false end user doesn't have to provide values
variable "storage_rg_name" {
  type = string
  default = ""
}

variable "storage_rg_location" {
  type = string
  default = ""
}

variable "storage_account_name" {
  type = string
  default = ""
}