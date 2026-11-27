/*resource "azurerm_windows_virtual_machine" "win_vm_web" {
  name                = "win-vm"
  location            = azurerm_resource_group.my-rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my-rg.name
  size                = "Standard_D2s_v3"
  admin_username      = "azureuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.web_vm_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  tags = local.project_tags
}*/