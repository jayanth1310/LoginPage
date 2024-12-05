terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
 
(*  backend "s3" {
   region = "us-east-1"
   key    = "terraform.tfstate"
 }
} *)
 
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
