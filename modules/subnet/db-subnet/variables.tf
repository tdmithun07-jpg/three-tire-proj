variable "resource_group_name" {
  description = "name of rg"
  type = string
  default = "dev-rg"
}

variable "location" {
  description = "region of the rg"
  type = string
  default = "East US"
}

variable "vnet_name" {
  description = "name of the virtual network"
  type        = string
  default = "dev-vent"
}

variable "subnet_address_prefixes" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default = [ "10.0.3.0/24" ]
}

variable "subnet_name" {
  description = "name of the subnet"
  type        = string
  default = "db_subnet"
}