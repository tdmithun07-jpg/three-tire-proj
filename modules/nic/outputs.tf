output "network_interface_ids" {
  value = azurerm_network_interface.nic.id
}

output "network_interface_name" {
  value = azurerm_network_interface.nic.name
}

# output "private_network_interface_ids" {
#   value = azurerm_network_interface.private_nic.id
# }

# output "db_network_interface_ids" {
#   value = azurerm_network_interface.db_nic.id
# }