prod_resource_group_name  = "prod-rg"
location                  = "eastus"
prod_storage_account_name = "prodsa20240119"
tags = {
  environment = "prod"
}
prod_virtual_network_name    = "prod-vnet"
prod_virtual_network_address = ["10.0.2.0/24"]
prod_subnet_name             = "prod-snet"
prod_subnet_address          = ["10.0.2.0/24"]
prod_public_ip_name          = "prod-pip"
prod_nsg_name                = "prod-nsg"
prod_nic_name                = "prod-nic"
prod_virtual_machine_name    = "prod-vm"
prod_virtual_machine_size    = "Standard_Ds1_v2"
prod_adminUser               = "produser"
prod_adminPassword           = "Azuredevops@12345"