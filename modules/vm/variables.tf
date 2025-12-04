variable "virtual_machine_name" {
  default = "public_vm"
    description = "Name of the virtual machine"
}
variable "network_interface_name" {
  description = "name of nic"
  type = string
#
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


