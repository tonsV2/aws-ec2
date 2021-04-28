variable "region" {
  default = "ap-southeast-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0528aaa563fd8afaf"
}

variable "application_name" {
  default = "ec2-test"
}

variable "public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "username" {
  default = "ubuntu"
}
