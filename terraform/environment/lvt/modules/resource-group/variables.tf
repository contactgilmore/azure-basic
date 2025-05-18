### module/resource-group/variables.tf ###

variable "name" {
  type        = string
  description = "The name of the resource group"
  #   default     = "rg-app-servers1"

}
variable "location" {
  type        = string
  description = "The location of the resource group"
  #   default     = "westus2"
}