variable "name" {
  type        = string
  description = "The name of the Microsoft SQL Server."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Microsoft SQL Server."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "administrator_login" {
  type        = string
  description = "The administrator login name for the new server."
}

variable "administrator_login_password" {
  type        = string
  description = "The password associated with the administrator_login user."
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
