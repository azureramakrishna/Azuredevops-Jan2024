variable "test_resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "test_storage_account_name" {
  type = string
}

variable "tags" {

}

variable "test_virtual_network_name" {
  type = string
}

variable "test_virtual_network_address" {
  type = list(any)
}

variable "test_subnet_name" {
  type = string
}

variable "test_subnet_address" {
  type = list(any)
}

variable "test_public_ip_name" {
  type = string
}

variable "test_nsg_name" {
  type = string
}

variable "test_nic_name" {
  type = string
}

variable "test_virtual_machine_name" {
  type = string
}

variable "test_virtual_machine_size" {
  type = string
}

variable "test_adminUser" {
  type = string
}

variable "test_adminPassword" {
  type = string
}