### module/virtual-network/main.tf ###

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

resource "azurerm_virtual_network" "vn-app-servers1" {
  name                = var.vn-name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  #   dns_servers         = ["10.0.0.4", "10.0.0.5"]


  tags = {
    environment = "Production"
  }
}
