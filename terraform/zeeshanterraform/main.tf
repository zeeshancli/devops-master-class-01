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
resource "aws_s3_bucket" "my_s3_bucket_zeeshan_786_01" {
    bucket = "my-s3-bucket-zeeshan-786-01"
}

resource "aws_s3_bucket" "my_s3_bucket_zeeshan_786_01" {
    bucket = "my-s3-bucket-zeeshan-786-01"
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

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc"
}

output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket_zeeshan_786_01.versioning[0].enabled
}