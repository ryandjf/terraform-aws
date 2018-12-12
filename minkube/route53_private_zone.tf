provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "private" {
  name = "example.com"
  vpc {
    vpc_id = "vpc-2c6ed848"
  }
}
