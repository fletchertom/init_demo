variable "location" {
  type        = string
  description = "The region Azure resources will be deployed into"
  default     = "uksouth"
}

# variable "storage_accounts" {
#   type = map(object({
#     name             = string
#     location         = string
#     rg               = string
#     tier             = string
#     replication_type = string
#   }))
# }

variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    vnet_name = string
    cidr      = list(string)
    location  = string
    rg        = string
  }))
}