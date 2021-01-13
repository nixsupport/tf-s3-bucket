terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = var.env_region
  
}

module "s3" {
  source = "./modules/s3"
  environment = var.environment
  region = var.env_region
  project_main_prefix = var.project_main_prefix
  project = var.project
}