variable "resource_group_name" {
  type = string
  default = "demo-rg"
}
variable "rg_location" {
  type = string
  default = "EAST US"
}
variable "linux_vm_name" {
  type = string
  default = "linux vm name"
}
variable "ssh_key_path" {
  type = string
  default = "/home/vagrant/az-vm-keys/.ssh/az-key.pub"
}
variable "admin_username" {
  type = string
  default = "adminuser"
}