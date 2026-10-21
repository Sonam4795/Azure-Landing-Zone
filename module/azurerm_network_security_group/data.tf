data "azurerm_network_interface" "data_nic_block" {
    for_each = var.nsgs
    name = each.value.nic_name
    resource_group_name = each.value.resource_group_name
  
}