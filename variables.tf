variable "CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "SECRET" {
  type      = string
  sensitive = true
}

variable "SUBSCRIPTION_ID" {
  type      = string
  sensitive = true
}
variable "TENANT_ID" {
  type      = string
  sensitive = true
}

variable "node-pool-name" {
  type    = string
  default = ""

}
variable "max-count" {
  type    = number
  default = 3

}
variable "min-count" {
  type    = number
  default = 1

}
variable "mode" {
  type    = string
  default = "User"

}
variable "disk-size" {
  type    = number
  default = 30

}
variable "os-type" {
  type    = string
  default = "Linux"

}
variable "vm-size" {
  type    = string
  default = "Standard_DS2_v2"
}

variable "resource-group-name" {
  type    = string
  default = ""

}

variable "aks-name" {
  type    = string
  default = ""

}
