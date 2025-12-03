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

variable "resource_group_name" {
  description = "name of rg"
  type = string
}

variable "location" {
  description = "region of the rg"
  type = string
}
