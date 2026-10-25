output "id" {
  value       = azurerm_virtual_network.this.id
  description = "The ID of the Virtual Network."
}

output "name" {
  value       = azurerm_virtual_network.this.name
  description = "The Name of the Virtual Network."
}

output "address_space" {
  value       = azurerm_virtual_network.this.address_space
  description = "The address space of the Virtual Network."
}
