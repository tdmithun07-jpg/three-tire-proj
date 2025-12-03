resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    address_space       = var.address_space
    resource_group_name = var.resource_group_name
    location            =   var.location
}

module "my_virtual_network" {
    source              = "github.com/tdmithun07-jpg/three-tire-proj/modules/vnet"
    resource_group_name = module.my_resource_group.resource_group_name
    location = module.my_resource_group.location
  }
