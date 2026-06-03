variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "environment" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "backend_pool_id" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}
