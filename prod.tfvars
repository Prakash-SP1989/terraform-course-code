resource_group_name           = "rg-prakash-web-tf"
location                      = "eastus"
vnet_name                     = "vnet1-prakash-tf"
vnet_address_space            = ["172.16.0.0/16"]
subnet_name                   = "subnet-web-prakash-tf"
subnet_address_prefixes       = ["172.16.1.0/24"]
environment                   = "prod"
department                    = "fin"
linux_vms = {
  "web1" = {
    vm_size = "Standard_D2ads_v6"
    zone    = "1"
  }
  "web2" = {
    vm_size = "Standard_D2s_v6"
    zone    = "2"
  }
  "web3" = {
    vm_size = "Standard_D2s_v6"
    zone    = "3"
  }
}
