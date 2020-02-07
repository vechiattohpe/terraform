// main.tf
provider "aws" {
 region = "us-east-1"
}
resource "aws_instance" "example" {
 ami = data.aws_ami.amazon_linux_latest.id
 instance_type = "t2.micro"
 // Tag the instance with some metadata"
  tags = local.tags
  volume_tags = local.tags
}

locals {
  tags = {
    ResourceOwner = "andre.souza@hpe.com"
    EndDate = "2020-04-02"
    Name = "Andre Souza"
    BusinessUnit = "CTP-GeoEnablement"
    User = "lab-user-x"
  }
}
data "aws_ami" "amazon_linux_latest" {
 most_recent = true
 owners = ["amazon"]
 filter {
 name = "name"
 values = ["amzn-ami-hvm-*"]
 }
 filter {
 name = "virtualization-type"
 values = ["hvm"]
 }
}
