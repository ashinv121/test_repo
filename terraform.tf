
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
  access_key = "my-access-key""AKIAV5HEAXV3RTDG5C4U"
  secret_key = "my-secret-key""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"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0989fb15ce71ba39e"
  instance_type = "t3.micro"

  tags = {
    Name = "MyInstanceName"
  }
}
