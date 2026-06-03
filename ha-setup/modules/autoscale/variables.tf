variable "environment" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vmss_id" {
  type = string
}

variable "default_instance_count" {
  type    = number
  default = 2
}

variable "minimum_instance_count" {
  type    = number
  default = 2
}

variable "maximum_instance_count" {
  type    = number
  default = 5
}

variable "scale_out_cpu_threshold" {
  type    = number
  default = 70
}

variable "scale_in_cpu_threshold" {
  type    = number
  default = 30
}
