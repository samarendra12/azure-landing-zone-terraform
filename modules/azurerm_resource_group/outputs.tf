output "id" {
  value       = azurerm_resource_group.this.id
  description = "The ID of the Resource Group."
}

output "name" {
  value       = azurerm_resource_group.this.name
  description = "The Name of the Resource Group."
}

output "location" {
  value       = azurerm_resource_group.this.location
  description = "The Location of the Resource Group."
}
