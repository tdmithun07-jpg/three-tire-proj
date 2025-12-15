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

variable "public_key_path" {
  type = string
  default = "github.com/tdmithun07-jpg/three-tire-proj/environments/dev/keys/testkey.txt"
}