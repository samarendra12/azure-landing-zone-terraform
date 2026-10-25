output "id" {
  value       = azurerm_public_ip.this.id
  description = "The ID of the Public IP."
}

output "ip_address" {
  value       = azurerm_public_ip.this.ip_address
  description = "The assigned IP address."
}
