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
  subscription_id = "a96db7f9-f077-48d6-9d2e-68075185bc77"
  client_id = "65d199e5-f822-4b65-97a3-9c1b83894ed4"
  client_secret = "sIv8Q~Ajj4V4JVRMebGHfxVs-6WaJtcwElJFhdB9"
  tenant_id = "b3e33edc-ced7-433a-9f35-93df9317d7a4"
}