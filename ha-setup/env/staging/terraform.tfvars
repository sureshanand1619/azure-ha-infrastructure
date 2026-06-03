environment = "staging"

location = "Central US"

resource_group_name = "staging-ha-rg"

vnet_cidr = "10.1.0.0/16"

public_subnet_cidr = "10.1.1.0/24"

private_subnet_cidr = "10.1.2.0/24"

allowed_ssh_ip = "0.0.0.0/32" ## place holder

admin_username = "azureuser"

instance_count = 2

min_instance_count = 2

max_instance_count = 4

scale_out_cpu_threshold = 70

scale_in_cpu_threshold = 30

alert_email = "your-email@example.com"
