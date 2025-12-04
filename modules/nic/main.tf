resource "azurerm_network_interface" "nic" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "public_configuration1"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# resource "azurerm_network_interface" "private_nic" {
#   name = var.private_network_interface_name
#     location            = var.location
#     resource_group_name = var.resource_group_name
#     ip_configuration {
#       name                          = "private_configuration1"
#       subnet_id                     = var.subnet_id
#       private_ip_address_allocation = "Dynamic"
#     }
# }

# resource "azurerm_network_interface" "db_nic" {
#    name = var.db_network_interface_name
#    location = var.location
#     resource_group_name = var.resource_group_name
#     ip_configuration {
#       name                          = "db_configuration1"
#       subnet_id                     = var.subnet_id
#       private_ip_address_allocation = "Dynamic"
#     }
# }

