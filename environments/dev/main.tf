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
    virtual_network_name = module.my_virtual_network.virtual_network_name
  }


# module "nsg" {
#   source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nsg"
# }

# module "nic" {
#   source = "github.com/tdmithun07-jpg/three-tire-proj/modules/nic"
#   # subnet_id = module.my_public_subnet.subnet_id
# }

# # module "vm" {
# #   source = "github.com/tdmithun07-jpg/three-tire-proj/modules/vm"
# #   network_interface_name = module.nic.network_interface_ids
# #   subnet_id = module.my_public_subnet.subnet_id
# # }
