module "rg_module" {
    source = "../../module/azurerm_resource_group"

rgs = var.prod_rg
}