provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket         = "westron-union-terraform-statefile-380377972418-us-east-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-wu"
  }
}

terraform {
  backend "s3" {
    bucket         = "westron-union-terraform-statefile-380377972418-us-east-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-wu"
  }
}
