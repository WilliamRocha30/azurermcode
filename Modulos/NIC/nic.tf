resource "azurerm_network_interface" "nic1" {
  name = var.nic_name
  resource_group_name = var.rg_name
  location = var.location

  ip_configuration {
    name = "${var.nic_name}-ipv4"
    subnet_id = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}