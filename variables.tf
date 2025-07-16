variable "location" {
  default     = "eastus"
  description = "Azure region"
}

variable "resource_group_name" {
  description = "Name of the existing resource group"
}

variable "subnet_id" {
  description = "ID of the existing subnet"
}

variable "admin_username" {
  description = "Admin username for the VM"
}

variable "admin_password" {
  description = "Admin password for the VM"
  sensitive   = true
}

variable "boot_diag_storage_uri" {
  description = "Blob endpoint URI for boot diagnostics"
}

