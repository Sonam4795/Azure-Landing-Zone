prod_rg = {
    rg1 = {
        name = "siya_keshav"
        location = "central india"
    }
}
prod_vnet =  {
    vnet1 = {
        name                = "chhotu_prod"
    location            = "central india"
    resource_group_name = "siya_keshav"
    address_space       = ["10.0.0.0/18"]

    }


}
prod_subnet = {
    prod_subnet1 = {
        name = "sona_prod_sbn"
        resource_group_name = "siya_keshav"
        virtual_network_name = "chhotu_prod"
        address_prefixes = "10.0.1.0/16"

    }
}
prod_Pip = {
    prod_pip1 = {
        name = "prod_pip_nanu"
      location = "central india"
      resource_group_name = "siya_keshav"
      allocation_method = "Static"
      sku = "Standard"
    }
}

prod_nic = {
    prod_nic1 = {
        name             = "prod_nic_kaka"
    location             = "central india"
    resource_group_name  = "siya_keshav"
    virtual_network_name = "chhotu_prod"
    subnet_name          = "sona_prod_sbn"
    pip_name             = "prod_pip_nanu"

    }
}
