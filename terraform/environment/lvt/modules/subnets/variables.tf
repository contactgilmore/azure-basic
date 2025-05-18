### module/subnets/variables.tf ###

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "security_group_id" {
  type        = string
  description = "The ID of the security group"

}

variable "vn-subnet-1-name" {
  type        = string
  description = "Name of the first subnet"
}

variable "vn-subnet-2-name" {
  type        = string
  description = "Name of the second subnet"
}

variable "vn-subnet-1-prefixes" {
  type        = list(string)
  description = "Subnet address prefixes"
}

variable "vn-subnet-2-prefixes" {
  type        = list(string)
  description = "Subnet address prefixes"
}