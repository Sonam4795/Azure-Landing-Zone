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