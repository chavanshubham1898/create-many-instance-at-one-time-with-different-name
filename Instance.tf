provider "aws" {
  region = "ap-south-1"
}

# resource "aws_instance" "FCT" {
#   ami = "ami-051a31ab2f4d498f5"
#   instance_type = "t3.micro"
#   count = 3
#   tags = {
#     Name = "FCT${count.index+1}"
#   }
# }

 resource "aws_instance" "FCT" {
  ami = "ami-051a31ab2f4d498f5"
  for_each = toset(["Jump-server","Application-server","DB-server"])
  instance_type = "t3.micro"
  tags = {
    Name = each.key
  }
}