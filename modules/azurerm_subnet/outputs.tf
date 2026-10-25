output "id" {
  value       = azurerm_subnet.this.id
  description = "The ID of the Subnet."
}

output "name" {
  value       = azurerm_subnet.this.name
  description = "The Name of the Subnet."
}

output "address_prefixes" {
  value       = azurerm_subnet.this.address_prefixes
  description = "The Address Prefixes of the Subnet."
}
