### lvt/variables.tf ###

variable "client_id" {
  type        = string
  description = "The client ID for the environment"
  sensitive   = true
}

variable "client_secret" {
  type        = string
  description = "The client secret for the environment"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID for the environment"
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "The subscription ID for the production environment"
  sensitive   = true
}

variable "subscription_id_stage" {
  type        = string
  description = "The subscription ID for the stage environment"
  sensitive   = true
}

variable "region-location" {
  type        = string
  default     = "westus2"
  description = "The location of the deployment"
}

variable "rg_name" {
  type        = string
  default     = "rg-app-servers1"
  description = "The name of the resource group"
}

variable "sg-name" {
  type        = string
  default     = "sg-app-servers"
  description = "The name of the security group"
}

variable "vn-name" {
  type        = string
  default     = "vn-app-servers1"
  description = "Name of the virtual network"
}

variable "vn-address-space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Address space for the virtual network"
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

variable "vn-subnet-1-prefixes" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Subnet address prefixes"
}

variable "vn-subnet-2-prefixes" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "Subnet address prefixes"
}

