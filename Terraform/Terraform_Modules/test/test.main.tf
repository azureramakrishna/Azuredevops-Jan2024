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
    key                  = "test.terraform.tfstate"
  }
}

module "test_vm" {
  source = "../"

  resource_group_name     = var.test_resource_group_name
  location                = var.location
  storage_account_name    = var.test_storage_account_name
  tags                    = var.tags
  virtual_network_name    = var.test_virtual_network_name
  virtual_network_address = var.test_virtual_network_address
  subnet_name             = var.test_subnet_name
  subnet_address          = var.test_subnet_address
  public_ip_name          = var.test_public_ip_name
  nsg_name                = var.test_nsg_name
  nic_name                = var.test_nic_name
  virtual_machine_name    = var.test_virtual_machine_name
  virtual_machine_size    = var.test_virtual_machine_size
  adminUser               = var.test_adminUser
  adminPassword           = var.test_adminPassword
}

