variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "create_resource_group" {
  type        = bool
  default     = true
  description = "Set to false to use an existing resource group"
}
variable "vm_name" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "db_username" {
  type = string
}
variable "db_password" {
  type      = string
  sensitive = true
}
variable "environment" {
  type = string
}