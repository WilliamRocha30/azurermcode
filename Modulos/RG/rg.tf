resource "azurerm_resource_group" "rg" {
  location = var.location
  name = var.rg_name
}