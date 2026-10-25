variable "name" {
  type        = string
  description = "The name of the Network Interface."
}

variable "location" {
  type        = string
  description = "The location/region where the network interface is created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the network interface."
}

variable "ip_configuration_name" {
  type        = string
  description = "A name used for this IP Configuration."
  default     = "ipconfig1"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet where this Network Interface should be located."
}

variable "private_ip_address_allocation" {
  type        = string
  description = "The allocation method used for the Private IP Address."
  default     = "Dynamic"
}

variable "public_ip_address_id" {
  type        = string
  description = "Reference to a Public IP Address ID to associate with this NIC."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
