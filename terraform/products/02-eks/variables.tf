variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

variable "intra_subnets" {
  type = list(string)
}

variable "name" {
  type = string
}
