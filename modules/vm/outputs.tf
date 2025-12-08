output "admin_username" {
  value = azurerm_virtual_machine.vm.admin_username
}

output "admin_password" {
  value = azurerm_virtual_machine.vm.admin_password
}

output "virtual_machine_id" {
  value = azurerm_virtual_machine.vm.id
}