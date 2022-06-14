terraform {
  cloud {
    organization = "sw-test-org"
    workspaces {
      name = "Example-Workspace"
    }
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c6120f461d6b39e9"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}