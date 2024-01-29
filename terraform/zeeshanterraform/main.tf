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

# plan
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-in28minutes-rangak-002"
}