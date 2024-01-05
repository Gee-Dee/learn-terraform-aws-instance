terraform {
  required_providers {
    # https://registry.terraform.io/browse/providers
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" { # resource type (aws_instance) and resource name (app_server)
  # AWS ami finder: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html#finding-quick-start-ami
  ami = "ami-0688ba7eeeeefe3cd"         
  #ami = "ami-830c94e3"
  #ami = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

# terraform fmt - updates configs in the current directory for readability and consistency, returns files it modified, if any.
# terraform validate - syntax and consistency check
# terraform show - show current state of applied configuration
# terraform state list - lists resources in your project's state