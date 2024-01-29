terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
 
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # VERSION IS NOT NEEDED HERE
}



resource "aws_s3_bucket" "your_s3_buckets" {
    count = 3
    bucket = "my-s3-bucket-prefix-${count.index}"
 #   versioning {
 #       enabled = true
 #   }
}




