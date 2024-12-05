terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Specify the provider version if needed
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-005fc0f236362e99f"
  instance_type = "t2.nano"

  tags = {
    Name = "test_instance"
  }
}

