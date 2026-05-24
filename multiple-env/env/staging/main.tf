module "vm" {
  source                = "../../modules/vm"
  environment           = "staging"
  location              = var.location
  resource_group_name   = var.resource_group_name
  create_resource_group = var.create_resource_group
  vm_name               = var.vm_name
  vm_size               = var.vm_size
  admin_username        = var.admin_username
  db_username           = var.db_username
  db_password           = var.db_password
}

output "public_ip_address" {
  value = module.vm.public_ip_address
}
output "private_ip_address" {
  value = module.vm.private_ip_address
}
output "ssh_connection_command" {
  value = module.vm.ssh_connection_command
}

variable "location"             { type = string }
variable "resource_group_name"  { type = string }
variable "create_resource_group"{ type = bool }
variable "vm_name"              { type = string }
variable "vm_size"              { type = string }
variable "admin_username"       { type = string }
variable "db_username"          { type = string }
variable "db_password"          { type = string; sensitive = true }