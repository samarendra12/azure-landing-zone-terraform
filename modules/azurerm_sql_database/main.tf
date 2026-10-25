resource "azurerm_mssql_database" "this" {
  name         = var.name
  server_id    = var.server_id
  collation    = var.collation
  sku_name     = var.sku_name
  max_size_gb  = var.max_size_gb
  tags         = var.tags

  lifecycle {
    prevent_destroy = true
  }
}
