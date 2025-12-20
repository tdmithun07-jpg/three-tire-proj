output "web_ip_address_id" {
  value = azurerm_public_ip.web-ip.id
}

output "app_ip_address_id" {
  value = azurerm_public_ip.app-ip.id
}