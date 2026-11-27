resource "azurerm_virtual_network" "vnet1" {
  name                = "${local.resource_name_prefix}-${var.virtual_network_name}"
  location            = azurerm_resource_group.my-rg.location
  resource_group_name = "${local.resource_name_prefix}-${var.resource_group_name}"
  address_space       = var.vnet_address_space
  tags                = local.project_tags
}