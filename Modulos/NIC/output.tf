output "ip" {
  value = azurerm_network_interface.nic1.id
}

output "ip2" {
  value = azurerm_network_interface.nic1.private_ip_address
}
