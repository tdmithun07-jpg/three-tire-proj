# output "private_key_pem" {
#   value = tls_private_key.vm1.private_key_pem
# }

# output "public_key_openssh" {
#   value = tls_private_key.vm1.public_key_openssh
# }

# output "public_key_path" {
#   value = azurerm_ssh_public_key.pub_key.public_key
# }

# output "public_key_path" {
#   value = data.local_file.ssh_key.content
# }

output "public_key_path" {
  value = azurerm_key_vault_secret.vm1_ssh_public_key.value
}
output "private_key_path" {
  value = azurerm_key_vault_secret.vm1_ssh_private_key.value
}