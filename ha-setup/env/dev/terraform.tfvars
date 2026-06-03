environment = "dev"

location = "Central US"

resource_group_name = "dev-ha-rg"

vnet_cidr = "10.0.0.0/16"

public_subnet_cidr = "10.0.1.0/24"

private_subnet_cidr = "10.0.2.0/24"

allowed_ssh_ip = "183.82.242.120/32"

admin_username = "azureuser"


instance_count = 2

min_instance_count = 2

max_instance_count = 5

scale_out_cpu_threshold = 70

scale_in_cpu_threshold = 30

alert_email = "your-email@example.com"

