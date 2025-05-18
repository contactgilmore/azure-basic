### module/security-group/variables.tf ###

variable "name" {
  type = string
  #   default     = "sg-app-servers"
  description = "The name of the security group"
}

variable "location" {
  type = string
  #   default     = "westus2"
  description = "The location of the deployment"
}

variable "resource_group_name" {
  type = string
  #   default     = "rg-app-servers"
  description = "The name of the resource group"
}

variable "vn-subnet-1-name" {
  type        = string
  default     = "vn-subnet-1"
  description = "Name of the first subnet"
}

variable "vn-subnet-2-name" {
  type        = string
  default     = "vn-subnet-2"
  description = "Name of the second subnet"
}

variable "subnet_id1" {
  type = string
  # default = "module.vn-subnets.vn-subnet-1-id"
  description = "values for the subnets"

}

variable "subnet_id2" {
  type = string
  # default = "module.vn-subnets.vn-subnet-2-id"
  description = "values for the subnets"

}