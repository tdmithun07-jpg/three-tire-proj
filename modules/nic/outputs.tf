output "network_interface_ids" {
  value = azurerm_network_interface.public_nic.id
}

# output "private_network_interface_ids" {
#   value = azurerm_network_interface.private_nic.id
# }

# output "db_network_interface_ids" {
#   value = azurerm_network_interface.db_nic.id
# }