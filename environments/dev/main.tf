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


