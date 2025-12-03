module "my_resource_group" {
    source    = "github.com/tdmithun07-jpg/three-tire-proj/modules/rg"
  }


module "my_virtual_network" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet"
  }

module "my_public_subnet" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/subnet/public-subnet"
  }

module "my_private_subnet" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/subnet/private-subnet"
  }

module "my_db_subnet" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/subnet/db-subnet"
}

module "nsg" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nsg"
}

module "nic" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nic"
  subnet_id = module.my_public_subnet.subnet_id
}

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "example-machine"
#   resource_group_name = module.my_resource_group.resource_group_name
#   location            =   module.my_resource_group.location
#   size                = "Standard_F2"
#   admin_username      = "adminuser"
#   network_interface_ids = [
#     azurerm_network_interface.public_nic.id,
#   ]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa_azure.pub")
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
# }