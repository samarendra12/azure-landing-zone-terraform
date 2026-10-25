output "id" {
  value       = azurerm_linux_virtual_machine.this.id
  description = "The ID of the Linux Virtual Machine."
}

output "name" {
  value       = azurerm_linux_virtual_machine.this.name
  description = "The Name of the Linux Virtual Machine."
}
