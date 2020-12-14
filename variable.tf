variable "vms_name" {
  type = "map"
  default = {
    "0" = "vm1"
    "1" = "vm2"
  }
}
variable "mem" {
  type = "map"
  default = {
    "0" = "1024"
    "1" = "1024"
  }
}

variable "cpu" {
  type = "map"
  default = {
    "0" = 1
    "1" = 1
  }
}

variable "vms_num" {
  default= "2"
}
