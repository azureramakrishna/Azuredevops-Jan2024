output "storage_account_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}

output "virtual_machine_private_ip" {
  value = azurerm_network_interface.example.private_ip_address
}

output "virtual_machine_publicip" {
  value = azurerm_public_ip.example.ip_address
}