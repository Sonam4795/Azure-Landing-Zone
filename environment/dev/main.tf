module "rg_module" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rg
}
module "vnet_module" {
  depends_on = [module.rg_module]
  source     = "../../module/azurerm_virtual_network"
  vnets      = var.vnet

}
module "subnet_module" {
  depends_on = [module.vnet_module]
  source     = "../../module/azurerm_subnet"
  subnets    = var.subnet

}
module "pip_module" {
  depends_on = [module.rg_module]
  source     = "../../module/azurerm_public_ip"
  pips       = var.pip

}
module "nic_module" {
  depends_on = [module.rg_module, module.subnet_module]

  source = "../../module/azurerm_network_interface_card"
  nics   = var.nic
}

module "nsg_module" {
  depends_on = [module.rg_module, module.nic_module]
  source     = "../../module/azurerm_network_security_group"
  nsgs       = var.nsg

}


module "vm_module" {
  depends_on = [module.nic_module, module.nsg_module]
  source     = "../../module/azurerm_virtual_machine"
  vms        = var.vm

}
# module "bastion_module" {
#   depends_on = [module.rg_module, module.subnet_module, module.pip_module]
#   source     = "../../module/azurerm_bastion"
#   bastions   = var.bastion

# }

# module "sql_server_module" {
#   depends_on  = [module.rg_module]
#   source      = "../../module/azurerm_sql_server"
#   sql_servers = var.sql_server

# }