provider "aws" {
  profile = "default"

  region = "eu-west-1"

  }

  terraform {
        backend "s3" {
        bucket = "chripaz-simple-bucket"
        key = "chris.tfstate"
        region = "eu-west-1"
    }    
  }
resource "aws_instance" "First_instance" {
  ami                    = "ami-06072fd101b82e654"
  instance_type          = "t2.micro"
  key_name               = "devopsnii"
  vpc_security_group_ids = ["sg-0e73bec63944bc1e8"]

  tags = {
    name        = "Our first node"
    provisioner = "Terraform"
    test        = "yes_no"


  }

}
