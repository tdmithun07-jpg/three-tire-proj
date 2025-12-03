resource "azurerm_network_interface" "public_nic" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = module.my_public_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

#comment 1