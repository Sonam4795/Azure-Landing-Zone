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