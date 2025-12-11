variable "location" {
  description = "location of the resource"
  type = string
  #default = "eastus"
}

variable "resource_group_name" {
  description = "name of resource group"
  type = string
 # default = "dev-rg"
}

variable "ssh_key_path" {
  description = "local/absolte path of public key file"
}

variable "public_key_name" {
  description = "name of the piblic key"
  type = string
}
