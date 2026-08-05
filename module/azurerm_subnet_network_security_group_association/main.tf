resource "azurerm_subnet_network_security_group_association" "sbn_nsg_ass_block" {
    for_each = var.subnets_nsg_ass

    subnet_id = data.azurerm_subnet.subnet_data_block[each.key].id
    network_security_group_id = data.azurerm_network_security_group.nsg_data_block[each.key].id

# 
  
}