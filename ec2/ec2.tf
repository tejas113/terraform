resource "aws_security_group" "allow_ssh" {
  name        = "allow-ssh"
  description = "allowing ssh access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name      = "allow_ssh"
    CreatedBy = "Tejas"
  }
}
