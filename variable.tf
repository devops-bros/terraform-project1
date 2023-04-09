variable "region_name" {
  type    = string
  default = "us-east-1"

}

variable "instance_type" {
  description = "this is the instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "this is the instance name"
  type        = string
  default     = "Jenkins-Dev-01"

}
variable "keypair" {
  type    = string
  default = "dev-keys"
}

//vpc variable

variable "vpc_name" {
  default = "DevOps vpc"

}


variable "env" {
  default = "prod"

}

