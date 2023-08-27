
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  
}
variable "aws_access_key" {}
variable "aws_secret_key" {}

resource "aws_instance" "my_instance" {
  ami           = "ami-0989fb15ce71ba39e"
  instance_type = "t3.micro"

  tags = {
    Name = "MyInstanceName"
  }
}
