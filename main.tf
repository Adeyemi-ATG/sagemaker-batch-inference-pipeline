# Data sources to retrieve information about the current AWS account and region

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}



# Terraform configuration block to manage providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Specify the AWS provider version range
    }
  }
}

# AWS provider configuration
provider "aws" {
  #region = data.aws_region.current.name  # Automatically use the current region
  region = var.aws_region
}

# Terraform Backend Configuration is optional if you defined the backend in your runner.
/*
terraform {
  backend "s3" {
    bucket = "batch-scoring-pipeline-tf-state"
    key    = "test/test_state"
    region = "eu-west-2"
  }
}
*/
locals {
  tags                    = jsondecode(file("${path.module}/tags.json"))
  email_address           = var.email_recipient
  notification_setup_list = jsonencode(var.custom_notification_config)
}