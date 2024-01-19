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
    key                  = "remote.terraform.tfstate"
  }
}

module "storage" {
  source               = "git::https://github.com/azureramakrishna/Azuredevops-Jan2024.git"
  resource_group_name  = "remote-resource-group"
  location             = "eastus"
  storage_account_name = ["ramakrishna20240119", "suresh20240119", "nagendra20240119"]
  tags = {
    environment = "dev"
  }
}