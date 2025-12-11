resource "azurerm_ssh_public_key" "example" {
  name                = "example"
  resource_group_name = var.resource_group_name
  location            = var.location
  public_key          = var.ssh_key_path
}