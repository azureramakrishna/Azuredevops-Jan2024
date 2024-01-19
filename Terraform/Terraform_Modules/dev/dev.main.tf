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
    key                  = "dev.terraform.tfstate"
  }
}

module "dev_vm" {
  source = "../"

  resource_group_name     = var.dev_resource_group_name
  location                = var.location
  storage_account_name    = var.dev_storage_account_name
  tags                    = var.tags
  virtual_network_name    = var.dev_virtual_network_name
  virtual_network_address = var.dev_virtual_network_address
  subnet_name             = var.dev_subnet_name
  subnet_address          = var.dev_subnet_address
  public_ip_name          = var.dev_public_ip_name
  nsg_name                = var.dev_nsg_name
  nic_name                = var.dev_nic_name
  virtual_machine_name    = var.dev_virtual_machine_name
  virtual_machine_size    = var.dev_virtual_machine_size
  adminUser               = var.dev_adminUser
  adminPassword           = var.dev_adminPassword
}

