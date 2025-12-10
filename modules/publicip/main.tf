resource "azurerm_public_ip" "web-ip" {
  name                = var.web_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
}

resource "azurerm_public_ip" "app-ip" {
  name                = var.app_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
}