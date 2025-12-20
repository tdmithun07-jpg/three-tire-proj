data "azurerm_key_vault" "kv" {
  name                = "dev-keyvault-1612"
  resource_group_name = "keyvault-rg"
}

data "azurerm_key_vault_secret" "ssh_public_key" {
  name         = "testkey1912-pub"
  key_vault_id = data.azurerm_key_vault.kv.id
}

# data "azurerm_key_vault_secret" "ssh_private_key" {
#   name         = "vm1-ssh-private"
#   key_vault_id = data.azurerm_key_vault.kv.id
# }

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.virtual_machine_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  network_interface_ids = [
    var.network_interface_ids
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = data.azurerm_key_vault_secret.ssh_public_key.value
  }
  #admin_password = "Password@12345"
  disable_password_authentication = true

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}

# resource "azurerm_virtual_machine" "vm" {
#   name                  = var.virtual_machine_name
#   location              = var.location
#   resource_group_name   = var.resource_group_name
#   network_interface_ids = [var.network_interface_ids]
#   vm_size               = "Standard_D2s_v3"

#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   delete_os_disk_on_termination = true

#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts-gen2"
#     version   = "latest"
#   }
#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "hostname"
#     admin_username = var.admin_username
#     admin_password = var.admin_password
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }