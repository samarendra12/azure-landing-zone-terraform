variable "name" {
  type        = string
  description = "The name of the virtual network."
}

variable "location" {
  type        = string
  description = "The location/region where the virtual network is created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
