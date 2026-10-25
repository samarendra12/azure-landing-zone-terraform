output "id" {
  value       = azurerm_network_interface.this.id
  description = "The ID of the Network Interface."
}

output "private_ip_address" {
  value       = azurerm_network_interface.this.private_ip_address
  description = "The first private IP address of the network interface."
}
