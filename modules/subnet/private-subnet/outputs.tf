output "subnet_address_prefixes" {
  value = azurerm_subnet.private_subnet
}

output "subnet_id" {
  value = azurerm_subnet.private_subnet.id
}