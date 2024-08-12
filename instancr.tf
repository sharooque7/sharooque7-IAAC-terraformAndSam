provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ainszon" {
  ami                    = y
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "ainszon"
  subnet_id = "subnet-0a37e8dc6730d6105"
  vpc_security_group_ids = ["sg-075376040f07afd69"]
  tags = {
    Name = "ainszon"
  }
}