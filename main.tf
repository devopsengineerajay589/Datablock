data "azurerm_resource_group" "rg-block" {
  name = "ajayrg-1"
}

resource "azurerm_storage_account" "storage" {
  name = "aurastg321"
  resource_group_name = data.azurerm_resource_group.rg-block.name
  location = data.azurerm_resource_group.rg-block.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}