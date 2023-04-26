resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.rg_location
}

resource "azurerm_linux_virtual_machine" "demo-vm" {
  name                  = var.linux_vm_name
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  size                  = "Standard_B4ms"
  admin_username        = var.admin_username
  disable_password_auth = true
  ssh_key {
    key_data = file("${var.ssh_key_path}")
  }
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.example.public_ip_address
}