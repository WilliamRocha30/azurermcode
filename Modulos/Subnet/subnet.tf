resource "azurerm_subnet" "name" {
  for_each = var.subnet_ti
  
  name = "${each.value.name}-${var.subnet_name}"
  virtual_network_name = var.vnet_name
  resource_group_name = var.rg_name
  address_prefixes = [each.value.subnet] 
}