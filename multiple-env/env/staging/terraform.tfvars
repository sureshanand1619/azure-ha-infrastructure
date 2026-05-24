location              = "Central US"
resource_group_name   = "terraform-vm-rg-staging"
create_resource_group = true   # false = use existing
vm_name               = "vm-staging"
vm_size               = "Standard_D2s_v3"
admin_username        = "azureuser"
db_username           = "appuser"
# db_password passed via CLI: -var="db_password=xxx"