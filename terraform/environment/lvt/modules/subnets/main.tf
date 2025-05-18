### module/subnets/main.tf ###

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

resource "azurerm_subnet" "vn-subnet-1" {
  name                 = var.vn-subnet-1-name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.vn-subnet-1-prefixes
}

resource "azurerm_subnet" "vn-subnet-2" {
  name                 = var.vn-subnet-2-name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.vn-subnet-2-prefixes
}
