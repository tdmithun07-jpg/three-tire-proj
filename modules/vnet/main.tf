resource "azurerm_virtual_network" "vnet" {
    resource_group_name = module.rg.resource_group_name
    location            = module.rg.location
    name                = var.vnet_name
    address_space       = var.address_space
}