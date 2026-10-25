variable "name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region where the resource group should exist."
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the resource group."
  default     = {}
}
