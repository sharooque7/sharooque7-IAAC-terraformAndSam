resource "aws_key_pair" "ainszon-key" {
  key_name   = "ainszon"
  public_key = file("ainszon.pub")
}

resource "aws_instance" "ainszon" {
  ami                    = var.AMIS["aws"]
  instance_type          = "t2.micro"
  availability_zone      = var.Availabiltiy_Zone["zone1"]
  key_name               = aws_key_pair.ainszon-key.key_name
  vpc_security_group_ids = [var.security["ainszon"]]
  subnet_id = var.subnet["public-1"]
  associate_public_ip_address = true
  tags = {
    Name = "ainszon"
  }
  provisioner "file" {
    source      = "./web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user        = "ec2-user"
    private_key = file("ainszon")
    host        = self.public_ip
  }

}
