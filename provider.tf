terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "3.6.2"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.5"
    }
  }
}

provider "docker" {
    host = "npipe:////./pipe/docker_engine"
}

provider "azurerm" {
  features {
    
  }
#Update your subscription details here
  subscription_id = ""
  client_id = ""
  client_secret =""
  tenant_id = ""

}
