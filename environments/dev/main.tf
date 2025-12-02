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
  subnet_id = module.my_public_subnet.subnet_id.subnet_id
}

module "vm" {
  source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vm"
  network_interface_ids = [module.nic.id]
  subnet_id = module.my_public_subnet.subnet_id
}

