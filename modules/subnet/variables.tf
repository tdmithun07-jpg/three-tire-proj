variable "public_subnet_name" {
  description = "name of the subnet"
  type        = string
  default = "public_subnet"
}
variable "public_subnet_address_prefixes" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default = [ "10.0.1.0/24" ]
}

variable "private_subnet_name" {
  description = "name of the subnet"
  type        = string
  default = "private_subnet"
}
variable "private_subnet_address_prefixes" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default = [ "10.0.2.0/24" ]
}

variable "db_subnet_name" {
  description = "name of the subnet"
  type        = string
  default = "db_subnet"
}
variable "db_subnet_address_prefixes" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default = [ "10.0.3.0/24" ]
}

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
  #default = "dev-vent"
}

