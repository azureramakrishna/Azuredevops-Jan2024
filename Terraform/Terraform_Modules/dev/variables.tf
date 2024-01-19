variable "dev_resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "dev_storage_account_name" {
  type = string
}

variable "tags" {

}

variable "dev_virtual_network_name" {
  type = string
}

variable "dev_virtual_network_address" {
  type = list(any)
}

variable "dev_subnet_name" {
  type = string
}

variable "dev_subnet_address" {
  type = list(any)
}

variable "dev_public_ip_name" {
  type = string
}

variable "dev_nsg_name" {
  type = string
}

variable "dev_nic_name" {
  type = string
}

variable "dev_virtual_machine_name" {
  type = string
}

variable "dev_virtual_machine_size" {
  type = string
}

variable "dev_adminUser" {
  type = string
}

variable "dev_adminPassword" {
  type = string
}