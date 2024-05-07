vnets = {
  vnet_1 = {
    vnet_name = "storagevnet"
    cidr      = ["10.0.0.0/24"]
    location  = "uksouth"
    rg        = "storagerg"
  }
  vnet_2 = {
    vnet_name = "vmsvnet"
    cidr      = ["192.168.0.0/24"]
    location  = "ukwest"
    rg        = "vmsrg"
  }
}

rgs = {
  first_rg = {
    name     = "storagerg"
    location = "westeurope"
  }
  second_rg = {
    name     = "vmsrg"
    location = "ukwest"
  }
}

