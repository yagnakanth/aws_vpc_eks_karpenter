terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.4"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "aj-prod-ap-south-1-terraform-backend"
    key    = "terraform/eks/terraform.state"
    region = "ap-south-1"
  }
}
provider "aws" {
  region  = var.aws_region
  profile = "minfy"
}

