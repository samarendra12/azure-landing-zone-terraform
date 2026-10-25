# Complete Multi-Tier Infrastructure Example using Modernized Modules

module "resource_group" {
  source   = "../../modules/azurerm_resource_group"
  name     = var.resource_group_name
  location = var.azure_region
  tags     = var.tags
}

module "virtual_network" {
  source              = "../../modules/azurerm_virtual_network"
  name                = var.vnet_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

module "subnet_web" {
  source               = "../../modules/azurerm_subnet"
  name                 = "snet-web"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}

module "subnet_db" {
  source               = "../../modules/azurerm_subnet"
  name                 = "snet-data"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes     = ["10.0.2.0/24"]
}

module "public_ip" {
  source              = "../../modules/azurerm_public_ip"
  name                = "pip-web-entrypoint"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

module "network_interface" {
  source                = "../../modules/azurerm_network_interface"
  name                  = "nic-web-vm"
  location              = module.resource_group.location
  resource_group_name   = module.resource_group.name
  subnet_id             = module.subnet_web.id
  public_ip_address_id  = module.public_ip.id
  ip_configuration_name = "ipconfig-primary"
  tags                  = var.tags
}

module "virtual_machine" {
  source                          = "../../modules/azurerm_virtual_machine"
  name                            = "vm-web-linux"
  location                        = module.resource_group.location
  resource_group_name             = module.resource_group.name
  network_interface_ids           = [module.network_interface.id]
  size                            = "Standard_B2s"
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  tags                            = var.tags
}

module "sql_server" {
  source                       = "../../modules/azurerm_sql_server"
  name                         = var.sql_server_name
  resource_group_name          = module.resource_group.name
  location                     = module.resource_group.location
  administrator_login          = var.db_admin_username
  administrator_login_password = var.db_admin_password
  tags                         = var.tags
}

module "sql_database" {
  source      = "../../modules/azurerm_sql_database"
  name        = "sqldb-app-prod"
  server_id   = module.sql_server.id
  sku_name    = "Basic"
  max_size_gb = 2
  tags        = var.tags
}
