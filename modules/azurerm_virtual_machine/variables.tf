variable "name" {
  type        = string
  description = "The name of the Linux Virtual Machine."
}

variable "location" {
  type        = string
  description = "The Azure location where the Virtual Machine should exist."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group."
}

variable "network_interface_ids" {
  type        = list(string)
  description = "A list of Network Interface IDs to attach to this Virtual Machine."
}

variable "size" {
  type        = string
  description = "The SKU which should be used for this Virtual Machine."
  default     = "Standard_B2s"
}

variable "admin_username" {
  type        = string
  description = "The username of the local administrator."
  default     = "azureuser"
}

variable "admin_password" {
  type        = string
  description = "The Password which should be used for the local-administrator."
  sensitive   = true
  default     = null
}

variable "disable_password_authentication" {
  type        = bool
  description = "Should Password Authentication be disabled in favor of SSH keys?"
  default     = false
}

variable "image_publisher" {
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  type        = string
  default     = "latest"
}

variable "storage_account_type" {
  type        = string
  description = "Type of Storage Account for OS Disk (e.g. Standard_LRS, Premium_LRS)."
  default     = "Standard_LRS"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
