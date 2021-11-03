resource "azurerm_network_security_group" "nsg" {
  name = var.nsg_name
  location = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_network_security_rule" "rule" {
  name = "rule1"
  priority = 100
  direction = "Inbound"
  access = "Allow"
  protocol = "Tcp"
  source_port_range = "*"
  destination_port_range = "443"
  source_address_prefix = "*"
  destination_address_prefix = "*"
  resource_group_name = var.rg_name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

resource "azurerm_subnet_network_security_group_association" "association" {
  subnet_id = var.subnet_name
  network_security_group_id = azurerm_network_security_group.nsg.id
}
