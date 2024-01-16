output "id" {
  value = data.azurerm_resource_group.rg.id
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = data.azurerm_subnet.snet.id
}

output "vault_uri" {
  value = data.azurerm_key_vault.keyavult.vault_uri
}