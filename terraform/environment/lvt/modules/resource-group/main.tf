### module/resource-group/main.tf ###

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

resource "azurerm_resource_group" "rg-app-servers1" {
  name     = var.name
  location = var.location
}
