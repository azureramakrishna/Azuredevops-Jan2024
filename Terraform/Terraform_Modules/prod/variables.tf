variable "prod_resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "prod_storage_account_name" {
  type = string
}

variable "tags" {

}

variable "prod_virtual_network_name" {
  type = string
}

variable "prod_virtual_network_address" {
  type = list(any)
}

variable "prod_subnet_name" {
  type = string
}

variable "prod_subnet_address" {
  type = list(any)
}

variable "prod_public_ip_name" {
  type = string
}

variable "prod_nsg_name" {
  type = string
}

variable "prod_nic_name" {
  type = string
}

variable "prod_virtual_machine_name" {
  type = string
}

variable "prod_virtual_machine_size" {
  type = string
}

variable "prod_adminUser" {
  type = string
}

variable "prod_adminPassword" {
  type = string
}