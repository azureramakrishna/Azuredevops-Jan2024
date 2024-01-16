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

variable "virtual_network_name" {
  type    = string
  default = "terraform-vnet"
}

variable "virtual_network_address" {
  type    = list(any)
  default = ["172.16.0.0/24"]
}

variable "subnet_name" {
  type    = string
  default = "terraform-subnet"
}

variable "subnet_address" {
  type    = list(any)
  default = ["172.16.0.0/25"]
}

variable "public_ip_name" {
  type    = string
  default = "terraform-pip"
}

variable "nsg_name" {
  type    = string
  default = "terraform-nsg"
}

variable "nic_name" {
  type    = string
  default = "terraform-nic"
}

variable "virtual_machine_name" {
  type    = string
  default = "terraform-vm"
}

variable "virtual_machine_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "adminUser" {
  type    = string
  default = "azureuser"
}

variable "adminPassword" {
  type    = string
  default = "Azuredevops@12345"
}