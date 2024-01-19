variable "resource_group_name" {
  type    = string
  default = "foreach-resource-group"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "storage_account_name" {
  type    = set(string)
  default = ["ramakrishna20240118", "prashanth20240118", "prasad20240118", "ram20240118", "suresh20240118"]
}

variable "tags" {
  default = {
    project     = "saanvikit"
    environment = "dev"
    owner       = "azureramakrishna@gmail.com"
  }
}