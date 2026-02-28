provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "FCT" {
  ami = ""
  instance_type = "t3.micro"
  tags = {
    Name = "FCT"
  }
}