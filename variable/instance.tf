resource "aws_instance" "ainszon" {
  ami               = var.AMIS[var.REGION]
  instance_type     = "t2.micro"
  key_name          = "ainszon"
  availability_zone = var.Availabiltiy_Zone["zone1"]
  subnet_id         = var.subnet["public-1"]
  tags = {
    Name = "ainszon"
  }
}
