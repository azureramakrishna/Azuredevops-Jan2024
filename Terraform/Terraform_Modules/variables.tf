variable "resource_group_name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "storage_account_name" {
  type    = string
}

variable "tags" {
}

variable "virtual_network_name" {
  type    = string
}

variable "virtual_network_address" {
  type    = list(any)
}

variable "subnet_name" {
  type    = string
}

variable "subnet_address" {
  type    = list(any)
}

variable "public_ip_name" {
  type    = string
}

variable "nsg_name" {
  type    = string
}

variable "nic_name" {
  type    = string
}

variable "virtual_machine_name" {
  type    = string
}

variable "virtual_machine_size" {
  type    = string
}

variable "adminUser" {
  type    = string
}

variable "adminPassword" {
  type    = string
}