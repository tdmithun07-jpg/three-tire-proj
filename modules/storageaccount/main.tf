resource "azurerm_storage_account" "statefile-storage" {
  name                     = "statefile-storage"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_container" "statefilecontainer" {
  name                  = "statefilecontainer"
  storage_account_id    = azurerm_storage_account.statefile-storage.id
  container_access_type = "private"
}