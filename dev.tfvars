resource_group_name     = "rg-prakash-web-tf"
location                = "eastus"
vnet_name               = "vnet1-prakash"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "subnet-web"
subnet_address_prefixes = ["10.0.1.0/24"]
environment             = "dev"
department              = "fin"
linux_vms = {
  "web1" = {
    vm_size = "Standard_D2ads_v6"
    zone    = "1"
  }
}
