terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.33.0"
    }
  }
  required_version = "~> 1.7.1"
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAW3MEAKOOB5FSUS7Y"
  secret_key = "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"
}
