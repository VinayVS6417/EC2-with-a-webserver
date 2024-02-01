terraform {
  required_providers {
    aws = {
      host = "hashicorp/aws"
      version = "~> 5.33.0"
    }
  required_version = "~> 1.7.1"
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAW3MEAKOOEVR4IIHB"
  secret_key = "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"
}
