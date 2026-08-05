data "azurerm_subnet" "subnet_data_block" {
    for_each = var.subnets_nsg_ass
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_network_security_group" "nsg_data_block" {
    for_each = var.subnets_nsg_ass
  name                = each.value.network_security_group_name
  resource_group_name = each.value.resource_group_name
}