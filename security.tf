provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["/root/.aws/credentials"]
}

terraform {
  backend "s3" {
    bucket         = "arun-tf-remote-state"
    key            = "infra-prod/security_group/test-2/tfstate"
    region         = "us-east-1"
  }
}

resource "aws_security_group" "test-2" {
           
}
