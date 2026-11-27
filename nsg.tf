resource "azurerm_network_security_group" "web-nsg" {
  name                = "${local.resource_name_prefix}-nsg"
  location            = azurerm_resource_group.my-rg.location
  resource_group_name = azurerm_resource_group.my-rg.name

  tags = local.project_tags
}

#nsg need to be attached with my subnet
resource "azurerm_subnet_network_security_group_association" "web_nsg_association" {
  subnet_id                 = azurerm_subnet.web-subnet.id
  network_security_group_id = azurerm_network_security_group.web-nsg.id
}

locals {
  web_nsg_rule = {
    "100" = "22"
    "120" = "80"
    "130" = "443"
    "140" = "3389"
    "150" = "8080"
  }
}

resource "azurerm_network_security_rule" "web_nsg_rule" { #men section
  for_each                    = local.web_nsg_rule
  name                        = "Rule_port_${each.value}" #22 80
  priority                    = each.key                  #110 120
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"        #0.0.0.0/0
  destination_port_range      = each.value #22 80
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.my-rg.name
  network_security_group_name = azurerm_network_security_group.web-nsg.name
}