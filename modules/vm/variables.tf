variable "virtual_machine_name" {
  default = "public_vm"
    description = "Name of the virtual machine"
}
variable "network_interface_name" {
  description = "name of nic"
  type = string
}

variable "network_interface_ids" {
  description = "value"
  type = string
}

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

variable "subnet_id" {
  description = "ID of the subnet"
  type = string
}



# variable "admin_username" {
#   description = "username of admin"
#   type = string
# }

# variable "admin_password" {
#   description = "password of the the vm"
#   type = string
# }

# variable "public_key" {
#   description = "public key location"
#   type = string 
# }

# variable "ssh_public_key" {
#   description = "public key for vm"
#   type = string
#   default = "github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/keypair1512.pub"
# }


