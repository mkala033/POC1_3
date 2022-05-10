provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
terraform {
  backend "s3"{
    bucket ="mypocbucket11"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIA3KZTFPFPWTHUYSNC"
    secret_key = "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"
  }
}
resource "aws_instance" "POC" {
  ami           = var.my_instance_ami
  instance_type = var.my_instance_type
  tags = {
    Name = var.my_instance_tags
  }
}
