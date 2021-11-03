variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}
variable "subnet_ti" {
  type = map(object (
      {
          name = string
          subnet = string
      }
  ))
}