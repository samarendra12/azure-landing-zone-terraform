variable "name" {
  type        = string
  description = "Specifies the name of the Public IP."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure location where the Public IP exists."
}

variable "allocation_method" {
  type        = string
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic."
  default     = "Static"
}

variable "sku" {
  type        = string
  description = "The SKU of the Public IP. Accepted values are Basic and Standard."
  default     = "Standard"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
