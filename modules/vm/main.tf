resource "azurerm_linux_virtual_machine" "public_vm" {
  name                = "public_vm"
  resource_group_name =   var.resource_group_name
  location            =   var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    var.network_interface_name
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = ("secrets.id_rsa_azure_vm_pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}