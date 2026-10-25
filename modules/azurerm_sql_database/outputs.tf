output "id" {
  value       = azurerm_mssql_database.this.id
  description = "The ID of the MS SQL Database."
}

output "name" {
  value       = azurerm_mssql_database.this.name
  description = "The Name of the MS SQL Database."
}
