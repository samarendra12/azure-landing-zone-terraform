variable "name" {
  type        = string
  description = "The name of the MS SQL Database."
}

variable "server_id" {
  type        = string
  description = "The id of the MS SQL Server on which to create the database."
}

variable "collation" {
  type        = string
  description = "Specifies the collation of the database."
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "sku_name" {
  type        = string
  description = "Specifies the name of the SKU used by the database."
  default     = "Basic"
}

variable "max_size_gb" {
  type        = number
  description = "The max size of the database in gigabytes."
  default     = 2
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
