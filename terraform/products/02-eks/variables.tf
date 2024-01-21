variable "vpc_id" {
  type    = string
  default = ""
}

variable "private_subnets" {
  type    = list(string)
  default = [""]
}

variable "intra_subnets" {
  type    = list(string)
  default = [""]
}
