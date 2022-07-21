variable "region" {
  default = "us-east-1"
}

variable "account" {}
variable "env" {}
variable "project_name" {}

variable "vpc_cidr" {}
variable "vpc_tenancy" {}
variable "subnet_cidrs" {}
variable "azs" {}

variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "public_ip_address" {}
