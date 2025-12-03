resource "azurerm_subnet" "public_subnet" {
    name                 = var.public_subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = var.vnet_name
    address_prefixes     = var.public_subnet_address_prefixes

}

resource "azurerm_subnet" "private_subnet" {
    name                 = var.private_subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = var.vnet_name
    address_prefixes     = var.private_subnet_address_prefixes
}

resource "azurerm_subnet" "db_subnet" {
    name                 = var.db_subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = var.vnet_name
    address_prefixes     = var.db_subnet_address_prefixes
  
}
