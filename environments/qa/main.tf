provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  instance_name = "qa-server"
  environment   = "qa"
}