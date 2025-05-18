### module/virtual-network/variables.tf ###

variable "vn-name" {
  type        = string
  description = "The name of the virtual network"
}

variable "location" {
  type        = string
  description = "The name of the virtual network"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "address_space" {
  type        = list(string)
  description = "The address space of the virtual network"
}

