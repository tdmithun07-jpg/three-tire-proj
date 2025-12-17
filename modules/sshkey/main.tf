resource "tls_private_key" "vm1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# resource "local_file" "pri_key" {
#   content         = tls_private_key.vm1.private_key_pem
#   filename        = pathexpand("github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/vm1") # Save private key as ~/.ssh/vm1
#   #file_permission = "0600"
# }

# resource "local_file" "pub_key" {
#   content  = tls_private_key.vm1.public_key_openssh
#   filename = pathexpand("github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/vm1.pub") # Save public key as ~/.ssh/vm1.pub
# }


data "azurerm_key_vault" "kv" {
  name                = "dev-keyvault-1612"
  resource_group_name = "keyvault-rg"
}

resource "azurerm_key_vault_secret" "vm1_ssh_public_key" {
  name         = "vm1-ssh-public"
  value        = tls_private_key.vm1.public_key_openssh
  key_vault_id = data.azurerm_key_vault.kv.id
}
resource "azurerm_key_vault_secret" "vm1_ssh_private_key" {
  name         = "vm1-ssh-private"
  value        = tls_private_key.vm1.private_key_openssh
  key_vault_id = data.azurerm_key_vault.kv.id
}