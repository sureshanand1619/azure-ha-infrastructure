resource "azurerm_virtual_network" "this" {
  name                = "${var.environment}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = [
    var.vnet_cidr
  ]
}

resource "azurerm_subnet" "public" {
  name                 = "${var.environment}-public-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    var.public_subnet_cidr
  ]
}

resource "azurerm_subnet" "private" {
  name                 = "${var.environment}-private-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = [
    var.private_subnet_cidr
  ]
}
