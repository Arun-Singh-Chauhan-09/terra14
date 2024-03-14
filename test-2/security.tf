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

vpc_id      = "vpc-075bb5722eee6e160"
name        = "test-2"
description = "test-2"
ingress= [
              {
                "cidr_blocks"= [ "0.0.0.0/0", ]
                description= ""
                from_port= 0
                ipv6_cidr_blocks= []
                prefix_list_ids= []
                protocol= -1
                security_groups= []
                self= false
                to_port= 0
              },
               {
                from_port                = 22
                to_port                  = 22
                protocol                 = "tcp"
                source_security_group_id = "i-0c2bd602b6ee715b1"
              }
		]     

egress= [
              {
                "cidr_blocks"= [ "0.0.0.0/0", ]
                description= ""
                from_port= 0
                ipv6_cidr_blocks= []
                prefix_list_ids= []
                protocol= -1
                security_groups= []
                self= false
                to_port= 0
              }
		]     
           
}
