variable "resource_group_name" {
  description = "name of rg"
  type = string
 #default = "dev-rg"
}

variable "location" {
  description = "region of the rg"
  type = string
 #default = "East US"
}
variable "vnet_name" {
  description = "name of the virtual network"
  type        = string
  default = "dev-vnet"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default = ["10.0.0.0/16"]
}