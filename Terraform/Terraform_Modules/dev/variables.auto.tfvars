dev_resource_group_name  = "dev-rg"
location                 = "eastus"
dev_storage_account_name = "devsa20240119"
tags = {
  environment = "dev"
}
dev_virtual_network_name    = "dev-vnet"
dev_virtual_network_address = ["10.0.0.0/24"]
dev_subnet_name             = "dev-snet"
dev_subnet_address          = ["10.0.0.0/24"]
dev_public_ip_name          = "dev-pip"
dev_nsg_name                = "dev-nsg"
dev_nic_name                = "dev-nic"
dev_virtual_machine_name    = "dev-vm"
dev_virtual_machine_size    = "Standard_Ds1_v2"
dev_adminUser               = "devuser"
dev_adminPassword           = "Azuredevops@12345"