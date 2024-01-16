#Use this data source to access information about an existing Resource Group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

#Use this data source to access information about an existing Virtual Network.
data "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

#Use this data source to access information about an existing Subnet within a Virtual Network.
data "azurerm_subnet" "snet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.rg.name
}

#Use this data source to access information about an existing Key Vault.
data "azurerm_key_vault" "keyavult" {
  name                = "saanvikit-kv"
  resource_group_name = "cloud-shell-storage-centralindia"
}

#Use this data source to access information about an existing Key Vault Secret.
data "azurerm_key_vault_secret" "keyvault_secret" {
  name         = "VirtualMachinePassword"
  key_vault_id = data.azurerm_key_vault.keyavult.id
}

