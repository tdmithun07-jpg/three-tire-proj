# output "admin_username" {
#   value = azurerm_virtual_machine.vm[0].os_profile.0.admin_username
#   }

# output "admin_password" {
#   value = azurerm_virtual_machine.vm[0].os_profile.0.admin_password
# }

output "virtual_machine_id" {
  value = azurerm_linux_virtual_machine.vm.id
}