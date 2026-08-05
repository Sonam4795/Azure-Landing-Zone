rg = {
  rg1 = {
    name     = "chinki"
    location = "west us"
  }
}
vnet = {
  vnet1 = {
    name                = "chhotu"
    location            = "west us"
    resource_group_name = "chinki"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "sona_sbn"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "sonam_sbn"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "sonamp_sbn"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    address_prefixes     = ["10.0.3.0/24"]
  }
  subnet4 = {
    name = "AzureBastionSubnet"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    address_prefixes     = ["10.0.4.0/24"]
  }
}
pip = {
  pip1 = {
    name                = "nana"
    location            = "west us"
    resource_group_name = "chinki"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
  pip2 = {
    name                = "nani"
    location            = "west us"
    resource_group_name = "chinki"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
  pip3 = {
      name = "nanu"
      location = "west us"
      resource_group_name = "chinki"
      allocation_method = "Static"
      sku = "Standard"
  }

}
nic = {
  nic1 = {
    name                 = "kaka"
    location             = "west us"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    subnet_name          = "sona_sbn"
    # pip_name             = "nana"
  }
  nic2 = {
    name                 = "papa"
    location             = "west us"
    resource_group_name  = "chinki"
    virtual_network_name = "chhotu"
    subnet_name          = "sonam_sbn"
    pip_name             = "nani"
  }
  # nic3 = {
  #   name                 = "chacha"
  #   location             = "west us"
  #   resource_group_name  = "chinki"
  #   virtual_network_name = "chhotu"
  #   subnet_name          = "sonamp_sbn"
  # }

}
vm = {
  vm1 = {
    name                 = "om"
    resource_group_name  = "chinki"
    location             = "west us"
    size                 = "Standard_D2s_v3"
    admin_username       = "adminsonam"
    admin_password       = "sona@123"
    nic_name             = "kaka"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
    # pip_name             = "nana"
  }

}

nsg = {
  nsg1 = {
    name                = "namahnsg"
    location            = "west us"
    resource_group_name = "chinki"
  }
}

subnet_nsg_ass = {
  nsg_ass1 = {
    subnet_name                 = "sona_sbn"
    network_security_group_name = "namahnsg"
    resource_group_name         = "chinki"
    virtual_network_name        = "chhotu"
  }
}

bastion = {


  bastion1 = {
    name                 = "AzureBastionSubnet"
    location             = "west us"
    resource_group_name  = "chinki"
    subnet_name          = "AzureBastionSubnet"
    pip_name             = "nanu"
    virtual_network_name = "chhotu"
  }
}



    