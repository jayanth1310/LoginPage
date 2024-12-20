provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}
provider "aws" {
  region = "us-east-1"
}
data "aws_availability_zones" "available" {}
locals {
  cluster_name = var.clusterName
}
