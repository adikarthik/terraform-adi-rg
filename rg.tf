terraform { 
  cloud { 
    
    organization = "B12" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
client_id       = "895046f8-297d-45a6-93a2-a4840da7c2b3"
  client_secret   = "-0B8Q~TnHGhRemwkCufNGnWlJGYolfTU0aZ5Hdh."
  tenant_id       = "6ec1ec76-f2c0-493c-b014-6b5497983bea"
  subscription_id = "20a282cd-41fe-411d-a64e-1727fb143505"
}
variable "rgname" {
  default = "teraform1234"
}
variable "location" {
  default = "West US 2"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
