resource "azurerm_route_table" "route_table" {
  name = var.rt_name
  location = var.location
  resource_group_name = var.rg_name

   route {
    name                   = "rota_10_8"
    address_prefix         = "10.0.0.0/8"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.1"
  }
    route {
    name                   = "rota_default"
    address_prefix         = "0.0.0.0/8"
    next_hop_type          = "Internet"
  }
}

resource "azurerm_subnet_route_table_association" "rt_association" {
  subnet_id = var.subnet_id
  route_table_id = azurerm_route_table.route_table.id
}