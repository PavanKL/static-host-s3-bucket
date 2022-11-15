terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "my-default-s3-pavan"
    key    = "terraform.tfstate"
    region = "ap-south-1"

    # For State Locking
    dynamodb_table = "my-table-name-for-terraform-state-lock"
  }
}