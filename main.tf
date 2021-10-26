terraform {
  required_version = ">= 1.0.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }
}

resource "aws_s3_bucket" "backend-bucket" {
  bucket        = "${var.environment}-${var.project_name}-backend-bucket"
  acl           = "private"
  tags          = var.general_tags
  versioning {
    enabled= true
  }
}

resource "aws_dynamodb_table" "users" {
  name           = "${var.environment}-${var.project_name}-backend-table"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"
  stream_enabled = false
  tags           = var.general_tags
  attribute {
    name = "LockID"
    type = "S"
  }
}
