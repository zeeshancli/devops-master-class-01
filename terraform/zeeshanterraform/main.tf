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
  region = "us-west-1"
  # VERSION IS NOT NEEDED HERE
}

# plan
resource "aws_s3_bucket" "my_s3_bucket_zeeshan_786_01" {
    bucket = "my-s3-bucket-zeeshan-786_01"
}

resource "aws_s3_bucket" "my_s3_bucket_zeeshan_786_01" {
    bucket = "my-s3-bucket-zeeshan-786_01"
 #   versioning {
 #       enabled = true
 #   }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_s3_bucket_zeeshan_786_01.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket_zeeshan_786_01.versioning[0].enabled
}