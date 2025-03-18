terraform {
  cloud {

    organization = "saintgobain22"

    workspaces {
      name = "project-w1"
    }
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {

  }

  subscription_id = var.sid
  tenant_id       = var.tid
  client_id       = var.cid
  client_secret   = var.cs

}