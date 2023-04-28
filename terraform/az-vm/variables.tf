variable "prefix" {
  type    = string
  default = "devops-projects"
}
variable "location" {
  type    = string
  default = "EAST US"
}
variable "ssh_key_path" {
  type    = string
  default = "/home/vagrant/az-vm-keys/.ssh/az-key.pub"
}
variable "admin_username" {
  type    = string
  default = "adminuser"
}
variable "vm_size" {
  type    = string
  default = "Standard_B4ms"
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "subscription_id" {
  type = string
}