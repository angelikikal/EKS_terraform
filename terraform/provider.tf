terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "RawLabs" {
  ami           = "ami-0f5094faf16f004eb"
  instance_type = "t2.medium"

  tags = {
    Name = "RawLabsInstance"
  }
}
