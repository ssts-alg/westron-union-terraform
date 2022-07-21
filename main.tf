module "networking" {
  source       = "../terraform-modules-july/"
  account      = var.account
  env          = var.env
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  vpc_tenancy  = var.vpc_tenancy
  subnet_cidrs = var.subnet_cidrs
  azs          = var.azs
}
  
module "networking" {
  source       = "../terraform-modules-july/"
  account      = var.account
  env          = var.env
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  vpc_tenancy  = var.vpc_tenancy
  subnet_cidrs = var.subnet_cidrs
  azs          = var.azs
}


module "networking" {
  source       = "../terraform-modules-july/"
  account      = var.account
  env          = var.env
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  vpc_tenancy  = var.vpc_tenancy
  subnet_cidrs = var.subnet_cidrs
  azs          = var.azs
}



resource "aws_instance" "web" {
  count                       = 1
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.allow_ssh1.id]
  subnet_id                   = module.networking.subnet_ids[0]
  key_name                    = var.key_name
  associate_public_ip_address = var.public_ip_address


  tags = {
    Name = "${var.project_name}-public-ec2-${var.env}-${count.index + 1}"
  }
}
