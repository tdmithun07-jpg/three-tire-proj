module "my_resource_group" {
    source    = "github.com/tdmithun07-jpg/three-tire-proj/modules/rg"
  }

module "my_virtual_network" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet"
    resource_group_name = module.my_resource_group.resource_group_name
    location = module.my_resource_group.location
  }

module "my_subnets" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/subnet"
    resource_group_name = module.my_resource_group.resource_group_name
    location = module.my_resource_group.location
    vnet_name = module.my_virtual_network.virtual_network_name
  }


module "nsg" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nsg"
  resource_group_name = module.my_resource_group.resource_group_name
  location = module.my_resource_group.location
}

module "web_public_ip" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/public-ip"
  resource_group_name = module.my_resource_group.resource_group_name
  location = module.my_resource_group.location
}

module "public_nic" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nic"
  network_interface_name = "public_nic"
  location = module.my_resource_group.location
  resource_group_name =  module.my_resource_group.resource_group_name
  subnet_id = module.my_subnets.public_subnet_id
  public_ip_address_id          = module.web_public_ip.ID
}

module "private_nic" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nic"
  network_interface_name = "private_nic"
  location = module.my_resource_group.location  
  resource_group_name =  module.my_resource_group.resource_group_name
  subnet_id = module.my_subnets.private_subnet_id
}

module "db_nic" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nic"
  network_interface_name = "db_nic"
  location = module.my_resource_group.location
  resource_group_name =  module.my_resource_group.resource_group_name
  subnet_id = module.my_subnets.db_subnet_id
}

module "web_vm" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vm"
  network_interface_name = module.public_nic.network_interface_name
  network_interface_ids = module.public_nic.network_interface_ids
  subnet_id = module.my_subnets.public_subnet_id
  location = module.my_resource_group.location
  resource_group_name = module.my_resource_group.resource_group_name
  virtual_machine_name = "public_vm"
  admin_username = "Web-admin"
  admin_password = "Password@12345"
}

resource "azurerm_network_interface_security_group_association" "nic_group_web" {
  network_interface_id = module.public_nic.network_interface_ids
  network_security_group_id = module.nsg.public_nsg_id
}

# module "app_vm" {
#   source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vm"
#   network_interface_name = module.private_nic.network_interface_name
#   #network_interface_ids = module.private_nic.network_interface_ids
#   subnet_id = module.my_subnets.private_subnet_id
#   location = module.my_resource_group.location
#   resource_group_name = module.my_resource_group.resource_group_name
#   virtual_machine_name = "app_vm"
#   admin_username = "appadmin"
#   admin_password = "password@1234"
# }

# resource "azurerm_network_interface_security_group_association" "nic_group_app" {
#   network_interface_id = module.private_nic.network_interface_ids
#   network_security_group_id = module.nsg.private_nsg_id
# }
