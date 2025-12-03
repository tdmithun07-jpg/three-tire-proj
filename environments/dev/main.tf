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

resource "azurerm_network_interface" "public_nic" {
  name                = "public_nic"
  location            = module.my_resource_group.location
  resource_group_name =  module.my_resource_group.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = module.my_public_subnet.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# module "public_vm" {
#   source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vm"
#   network_interface_ids = [module.nic.id]
#   subnet_id = module.my_public_subnet.subnet_id
# }

