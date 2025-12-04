variable "public_nsg_name" {
  description = "name of the network security group"
  type        = string
  default = "public-nsg"
}


variable "private_nsg_name" {
  description = "name of the network security group"
  type        = string
  default = "private-nsg"
}

variable "database_nsg_name" {
  description = "name of the network security group"
  type        = string
  default = "database-nsg"
}


variable "resource_group_name" {
  description = "name of rg"
  type = string
#   default = "dev-rg"
}

variable "location" {
  description = "region of the rg"
  type = string
#   default = "East US"
}