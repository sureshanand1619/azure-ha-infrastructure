variable "environment" {}
variable "location" {}
variable "resource_group_name" {}

variable "vnet_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

variable "allowed_ssh_ip" {}

variable "admin_username" {}


variable "instance_count" {
  type = number
}

variable "min_instance_count" {
  type = number
}

variable "max_instance_count" {
  type = number
}

variable "scale_out_cpu_threshold" {
  type = number
}

variable "scale_in_cpu_threshold" {
  type = number
}

variable "alert_email" {}

