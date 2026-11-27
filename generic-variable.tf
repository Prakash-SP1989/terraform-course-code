variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-prakash-web-tf"
}
variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "eastus"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "vnet1-prakash-tf"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["172.31.0.0/16"]
}


variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet-web-prakash-tf"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["172.31.1.0/24"]
}

variable "department" {
  description = "The department name"
  type        = string
  default     = "finance"
}

variable "environment" {
  description = "The environment name"
  type        = string
  default     = "dev"
}

