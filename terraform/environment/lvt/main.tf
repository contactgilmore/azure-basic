### lvt/main.tf ###

module "resource-group-prod" {
  source = "./modules/resource-group"
  providers = {
    azurerm = azurerm.prod
  }
  name     = var.rg_name
  location = var.region-location
}

module "resource-group-stage" {
  source = "./modules/resource-group"
  providers = {
    azurerm = azurerm.stage
  }
  name     = var.rg_name
  location = var.region-location
}

module "security-group-prod" {
  source = "./modules/security-group"
  providers = {
    azurerm = azurerm.prod
  }
  name                = var.sg-name
  location            = var.region-location
  resource_group_name = var.rg_name
  subnet_id1          = module.vn-subnets-prod.vn-subnet-1-id
  subnet_id2          = module.vn-subnets-prod.vn-subnet-2-id

  depends_on = [module.resource-group-prod.name]
}

module "security-group-stage" {
  source = "./modules/security-group"
  providers = {
    azurerm = azurerm.stage
  }
  name                = var.sg-name
  location            = var.region-location
  resource_group_name = var.rg_name
  subnet_id1          = module.vn-subnets-stage.vn-subnet-1-id
  subnet_id2          = module.vn-subnets-stage.vn-subnet-2-id

  depends_on = [module.resource-group-stage.name]
}

module "virtual-network-prod" {
  source = "./modules/virtual-network"
  providers = {
    azurerm = azurerm.prod
  }
  vn-name             = var.vn-name
  location            = var.region-location
  resource_group_name = var.rg_name
  address_space       = var.vn-address-space

  depends_on = [module.resource-group-prod.name]

}

module "virtual-network-stage" {
  source = "./modules/virtual-network"
  providers = {
    azurerm = azurerm.stage
  }
  vn-name             = var.vn-name
  location            = var.region-location
  resource_group_name = var.rg_name
  address_space       = var.vn-address-space

  depends_on = [module.resource-group-stage.name]
}

module "vn-subnets-prod" {
  source = "./modules/subnets"
  providers = {
    azurerm = azurerm.prod
  }
  vn-subnet-1-name     = var.vn-subnet-1-name
  vn-subnet-2-name     = var.vn-subnet-2-name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vn-name
  vn-subnet-1-prefixes = var.vn-subnet-1-prefixes
  vn-subnet-2-prefixes = var.vn-subnet-2-prefixes
  security_group_id    = module.security-group-prod.security_group_ids

  depends_on = [module.virtual-network-prod.name]
}

module "vn-subnets-stage" {
  source = "./modules/subnets"
  providers = {
    azurerm = azurerm.stage
  }
  vn-subnet-1-name     = var.vn-subnet-1-name
  vn-subnet-2-name     = var.vn-subnet-2-name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vn-name
  vn-subnet-1-prefixes = var.vn-subnet-1-prefixes
  vn-subnet-2-prefixes = var.vn-subnet-2-prefixes
  security_group_id    = module.security-group-stage.security_group_ids

  depends_on = [module.virtual-network-stage.name]
}

### OPTIONAL ###

### CREATES A BACK END STORAGE ACCOUNT FOR STATE FILES ###

# module "back-end-storage" {
#   source = "./modules/back-end-storage"
# }

### CREATES A KEY VAULT FOR SECRET MANAGEMENT ###

# module "key-vault" {
#   source   = "./modules/key-vault"
# }