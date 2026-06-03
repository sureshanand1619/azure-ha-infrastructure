output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "public_ip_address" {
  description = "The public IP address"
  value       = azurerm_public_ip.publicip.ip_address
}

output "private_ip_address" {
  description = "The private IP address"
  value       = azurerm_network_interface.nic.private_ip_address
}

output "resource_group_name" {
  description = "The resource group name"
  value       = local.resource_group_name
}

output "location" {
  description = "The Azure region"
  value       = local.location
}

output "ssh_connection_command" {
  description = "SSH command to connect to the VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.publicip.ip_address}"
}