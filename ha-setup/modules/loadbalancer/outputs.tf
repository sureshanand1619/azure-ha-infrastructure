output "backend_pool_id" {
  value = azurerm_lb_backend_address_pool.pool.id
}

output "public_ip" {
  value = azurerm_public_ip.lb.ip_address
}

output "lb_id" {
  value = azurerm_lb.this.id
}

