# Declare Terraform version constraints and required provider configurations

terraform {
  # Declare the required providers for this configuration
  required_providers {
    # Specify the AWS provider with version constraints
    aws = {
      source  = "hashicorp/aws" # Source of the AWS provider plugin
    #   version = "~> 3.0.0"       # Version constraints for the AWS provider
      version = "= 4.1.0"           # change to version 4.1.0

    }
  }

  # Specify the minimum Terraform version required for this configuration
  required_version = ">= 1.1"
}

# Configure the AWS provider with region settings

provider "aws" {
  # Set the AWS region to us-east-1
  region = "us-east-1"
}
