resource "azurerm_monitor_action_group" "this" {

  name                = "${var.environment}-alerts"
  resource_group_name = var.resource_group_name
  short_name          = "ops"

  email_receiver {
    name          = "admin"
    email_address = var.alert_email
  }
}
