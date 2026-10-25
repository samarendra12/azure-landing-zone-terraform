output "id" {
  value       = azurerm_mssql_server.this.id
  description = "The Microsoft SQL Server ID."
}

output "fully_qualified_domain_name" {
  value       = azurerm_mssql_server.this.fully_qualified_domain_name
  description = "The fully qualified domain name of the Azure SQL Server."
}
