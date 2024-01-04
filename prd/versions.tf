terraform {
  required_providers {
    # https://registry.terraform.io/browse/providers
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"  # Terraform cli version
}

terraform {
  backend "s3" {
    bucket = "bucketjddc"
    key    = "tfstates/prd/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-east-2"
}
