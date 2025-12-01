output "subnet_address_prefixes" {
  value = azurerm_subnet.db_subnet
}

output "subnet_id" {
  value = azurerm_subnet.db_subnet.id
}