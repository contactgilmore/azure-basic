### lvt/providers.tf ###

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }

  cloud {
    organization = "Isles_to_Augusta"
    workspaces {
      name = "tfstate"
    }
  }
  required_version = ">= 1.0.0"

}

provider "azurerm" {

  alias = "prod"

  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

}

provider "azurerm" {

  alias = "stage"

  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id_stage

}



