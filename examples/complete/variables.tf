variable "azure_subscription_id" {
  type        = string
  description = "Target Azure Subscription GUID."
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name."
  default     = "rg-enterprise-app-prod"
}

variable "azure_region" {
  type        = string
  description = "Azure Region for all resources."
  default     = "East US"
}

variable "vnet_name" {
  type        = string
  default     = "vnet-enterprise-prod"
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  default     = null
}

variable "sql_server_name" {
  type        = string
  description = "Globally unique SQL Server Name."
  default     = "sqlserver-app-samar-12345"
}

variable "db_admin_username" {
  type        = string
  default     = "sqladminuser"
}

variable "db_admin_password" {
  type        = string
  sensitive   = true
  default     = null
}

variable "tags" {
  type        = map(string)
  default = {
    Environment = "production"
    ManagedBy   = "Terraform"
    Project     = "Azure-Landing-Zone"
  }
}
