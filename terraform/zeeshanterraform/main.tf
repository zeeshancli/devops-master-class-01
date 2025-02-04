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
resource "aws_s3_bucket" "your_s3_bucket_rizwan_786_01" {
    bucket = "my-s3-bucket-rizwan-786-01"
    versioning{
        enabled = true
    }
}

resource "aws_s3_bucket" "your_s3_bucket_rizwan_786_02" {
    bucket = "my-s3-bucket-rizwan-786-01"
 #   versioning {
 #       enabled = true
 #   }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.your_s3_bucket_rizwan_786_01.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "your_s3_bucket_rizwan_786_03" {
    bucket = "my-s3-bucket-rizwan-786-03"
 #   versioning {
 #       enabled = true
 #   }
}


output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.your_s3_bucket_rizwan_786_01.versioning[0].enabled
}