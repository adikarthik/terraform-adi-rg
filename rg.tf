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
