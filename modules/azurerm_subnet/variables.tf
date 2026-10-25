variable "name" {
  type        = string
  description = "The name of the subnet."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which the subnet is created."
}

variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network to which the subnet belongs."
}

variable "address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnet."
}
