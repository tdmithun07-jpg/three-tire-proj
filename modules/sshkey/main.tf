resource "tls_private_key" "vm1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "pri_key" {
  content         = tls_private_key.vm1.private_key_pem
  filename        = pathexpand("github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/vm1") # Save private key as ~/.ssh/vm1
  #file_permission = "0600"
  sensitive_content = false
}

resource "local_file" "pub_key" {
  content  = tls_private_key.vm1.public_key_openssh
  filename = pathexpand("github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/vm1.pub") # Save public key as ~/.ssh/vm1.pub
  sensitive_content = false
}