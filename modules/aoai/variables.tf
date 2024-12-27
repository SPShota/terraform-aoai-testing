variable "app_name" {
  type        = string
  description = "A name of an application"
}

variable "location" {
  type        = string
  description = "A location of Azure resources"
}

variable "resource_group_name" {
  type        = string
  description = "A name of Azure resource group"
  sensitive   = true
}

variable "subdomain_name" {
  type        = string
  description = "A sub domain name of Azure Cognitive Service"
  sensitive   = true
}