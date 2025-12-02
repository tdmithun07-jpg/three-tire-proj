module "my_resource_group" {
    source    = "github.com/tdmithun07-jpg/three-tire-proj/modules/rg"
  }


module "my_virtual_network" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet"
  }

module "my_public_subnet" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet/public-subnet"
  }

module "my_private_subnet" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet/private-subnet"
  }

module "my_db_subnet" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet/db-subnet"
}

# module "nsg" {
#   source = "../../modules/nsg"
# }

# resource "azurerm_public_ip" "public_ip" {
#   name                = "public_ip"
#   resource_group_name = module.my_resource_group.resource_group_name
#   location            = module.my_resource_group.location
#   allocation_method   = "Dynamic"
# }

# resource "azurerm_public_ip" "private_ip" {
#   name                = "private_ip"
#   resource_group_name = module.my_resource_group.resource_group_name
#   location            = module.my_resource_group.location
#   allocation_method   = "Dynamic"
# }
