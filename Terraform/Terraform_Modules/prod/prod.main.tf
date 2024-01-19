terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# terraform backend
terraform {
  backend "azurerm" {
    resource_group_name  = "storage-account-resource-group"
    storage_account_name = "saanvikit20240118"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

module "prod_vm" {
  source = "../"

  resource_group_name     = var.prod_resource_group_name
  location                = var.location
  storage_account_name    = var.prod_storage_account_name
  tags                    = var.tags
  virtual_network_name    = var.prod_virtual_network_name
  virtual_network_address = var.prod_virtual_network_address
  subnet_name             = var.prod_subnet_name
  subnet_address          = var.prod_subnet_address
  public_ip_name          = var.prod_public_ip_name
  nsg_name                = var.prod_nsg_name
  nic_name                = var.prod_nic_name
  virtual_machine_name    = var.prod_virtual_machine_name
  virtual_machine_size    = var.prod_virtual_machine_size
  adminUser               = var.prod_adminUser
  adminPassword           = var.prod_adminPassword
}

