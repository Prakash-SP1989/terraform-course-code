terraform {
  backend "azurerm" {
    resource_group_name  = "prakash-terraform-statefile"
    storage_account_name = "prakashterraformstate"
    container_name       = "prakashtfstate"
    key                  = "prakash.tfstate"
  }
}