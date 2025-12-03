resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet_name
    address_space       = var.address_space
    resource_group_name = module.azurerm_resource_group.rg.name
    location            = module.azurerm_resource_group.rg.location
}