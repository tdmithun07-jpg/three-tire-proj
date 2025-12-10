
output "vent_address_space" {
  value = module.my_virtual_network
}


output "public_subnet_id" {
  value = module.my_subnets.public_subnet_id
}
# output "public_nic_ids" {
#   value = module.public_nic.network_interface_ids
# }
output "public_nic_name" {
  value = module.public_nic
}
output "private_nic_ids" {
  value =  module.private_nic.network_interface_ids
}
# output "web_ip_id" {
#   value = module.web_ip.ip_address
# }
# output "app_ip_id" {
#   value = module.app_ip.ip_address
# }

# output "web_vm_username" {
#   value = module.web_vm.admin_username
# }
# output "web_vm_pass" {
#   value = module.web_vm.admin_password
# # }
# output "web_vm_id" {
#   value = module.web_vm.id
# }