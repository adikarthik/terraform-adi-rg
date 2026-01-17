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
client_id="0e15bc0c-2919-4259-8866-3147cdd9100c"
                        client_secret="Y4p8Q~15bRQgI6dVPfjy~g~2iYQj3sJSlHsVAdk9"
                        tenant_id="60fb6db9-dc95-4fc8-b91b-2ca9c1b8971f"
                        subscription_id="c46beff3-d22c-4a6f-82a7-693fd94c69c4"
}
variable "rgname" {
  default = "teraform"
}
variable "location" {
  default = "West US 2"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
