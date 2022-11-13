terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  
    backend "s3" {
    bucket = "my-default-s3-pavankl"
    key    = "terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    dynamodb_table = "my-table-name-for-terraform-state-lock"
  }
}