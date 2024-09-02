# Data sources to retrieve information about the current AWS account and region
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# Terraform configuration block to manage providers and backend
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Specify the AWS provider version range
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket-mlops-prob-model"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    encrypt = true
  }
}

# AWS provider configuration
provider "aws" {
  region = var.aws_region
}

# Local values
locals {
  tags                    = jsondecode(file("${path.module}/tags.json"))
  email_address           = var.email_recipient
  notification_setup_list = jsonencode(var.custom_notification_config)
}