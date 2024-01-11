variable "resource_group_name" {
  type    = string
  default = "terraform-resource-group"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "storage_account_name" {
  type    = string
  default = "TERRAFORMSA20240111"
}

variable "tags" {
  default = {
    project     = "saanvikit"
    environment = "dev"
    owner       = "azureramakrishna@gmail.com"
  }
}