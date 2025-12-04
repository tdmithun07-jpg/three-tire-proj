output "public_nsg_id" {
  value = azurerm_network_security_group.public_nsg.id
}

output "private_nsg_id" {
  value = azurerm_network_security_group.private_nsg.id
}

output "db_nsg_id" {
  value = azurerm_network_security_group.database_nsg.id
}