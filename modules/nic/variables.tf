variable "network_interface_name" {
  description = "name of nic"
  type = string
#   default = "public_nic"
}

# variable "private_network_interface_name" {
#   description = "name of nic"
#   type = string
#   #default = "private_nic"
# }

# variable "db_network_interface_name" {
#   description = "name of nic"
#   type = string
#   #default = "db_nic"
# }

variable "subnet_id" {
  description = "ID of the subnet"
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
#   default = "dev-rg"
}



