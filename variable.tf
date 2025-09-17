variable "resourcegroup" {
  type = string
  description = "This is resource group name"
}

variable "location" {
  type = string
  description = "This is resource group location"
}

variable "acr_name" {
  type = string
  description = "This is azure container registry name"
}

variable "webapp_name" {
  type = string
  description = "WebApp Name"
}