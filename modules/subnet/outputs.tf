output "public_subnet_prefix" {
  value = azurerm_subnet.public_subnet.address_prefixes
}

output "public_subnet_id" {
  value = azurerm_subnet.public_subnet.id
}

output "private_subnet_prefix" {
  value = azurerm_subnet.private_subnet.address_prefixes
}
output "private_subnet_id" {
  value = azurerm_subnet.private_subnet.id
}

output "db_subnet_prefix" {
  value = azurerm_subnet.db_subnet.address_prefixes
}
output "db_subnet_id" {
  value = azurerm_subnet.db_subnet.id
}