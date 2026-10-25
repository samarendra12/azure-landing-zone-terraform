output "resource_group_name" {
  value = module.resource_group.name
}

output "virtual_network_name" {
  value = module.virtual_network.name
}

output "public_ip_address" {
  value = module.public_ip.ip_address
}

output "vm_private_ip" {
  value = module.network_interface.private_ip_address
}

output "sql_server_fqdn" {
  value = module.sql_server.fully_qualified_domain_name
}
