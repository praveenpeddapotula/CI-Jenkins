terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50"
    }
  }
}

 terraform {
   backend "s3" {
  
   }
 }


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}