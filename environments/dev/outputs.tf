
output "vent_address_space" {
  value = module.my_virtual_network
}

# #public subnet
output "public_subnet_address_prefixes" {
  value = module.my_subnets
}
output "public_subnet_id" {
  value = module.my_subnets.public_subnet_id
}

output "public_nic_id" {
  value = module.public_nic.id
}

# #private subnet
# output "private_subnet_address_prefixes" {
#   value = module.my_private_subnet.subnet_address_prefixes.address_prefixes
# }
# output "private_subnet_id" {
#   value = module.my_private_subnet.subnet_id
# }

# #db subnet
# output "db_subnet_address_prefixes" {
#   value = module.my_db_subnet.subnet_address_prefixes.address_prefixes
# }
# output "db_subnet_id" {
#   value = module.my_db_subnet.subnet_id
# }

# output "public_nic_id" {
#   value = module.nic.network_interface_ids
# }