resource "azurerm_resource_group" "networking" {
  for_each = var.rgs

  name     = each.value["name"]
  location = each.value["location"]
}

resource "azurerm_virtual_network" "networking" {
  for_each = var.vnets

  name                = each.value["vnet_name"]
  address_space       = each.value["cidr"]
  location            = each.value["location"]
  resource_group_name = each.value["rg"]

  depends_on = [azurerm_resource_group.networking]
}

resource "azurerm_resource_group" "storage" {
  count = var.deploy_storage_accounts ? 1 : 0

  name     = var.storage_rg_name
  location = var.storage_rg_location
}

resource "azurerm_storage_account" "storage" {
  count = var.deploy_storage_accounts ? 1 : 0

  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.storage[count.index].name     # attributes must be accessed on specific instances/iterations, so need count.index here
  location                 = azurerm_resource_group.storage[count.index].location # attributes must be accessed on specific instances, so need count.index here
  account_tier             = "Standard"
  account_replication_type = "LRS"
}