output "subnet_address_prefixes" {
  value = azurerm_subnet.public_subnet
}

output "subnet_id" {
  value = azurerm_subnet.public_subnet.id
}

