
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "chipitass"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
