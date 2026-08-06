module "rg_module" {
    source = "../../module/azurerm_resource_group"

rgs = var.prod_rg
}
module "vnet_module" {
    source = "../../../module/azurerm_virtual_network"
    vnets = var.prod_vnet
  
}
module "subnet_module" {
    source = "../../../module/azurerm_subnet"
    subnets = var.prod_subnet

 
}