variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}

variable "admin_username" {
  type    = string
  default = "mihai"
}

variable "admin_password" {
  # type      = string
  # sensitive = true
}

variable "vm_count" {
  type    = number
  default = 2
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "vm_image" {
  type    = string
  default = "22_04-lts"
}
