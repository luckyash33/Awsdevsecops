provider "aws" {
  region = "ap-south-1"
}
locals {
  env    = "dev"
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = format("mybucket-%s-%s", local.env, local.region)
}
