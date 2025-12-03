resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    address_space       = var.address_space
    resource_group_name = module.my_resource_group.resource_group_name
    location            = module.my_resource_group.location
}