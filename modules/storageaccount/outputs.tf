output "storage_account_id" {
  value = azurerm_storage_account.statefile.id
}

output "storage_container_id" {
  value = azurerm_storage_container.statefilecontainer.id
}