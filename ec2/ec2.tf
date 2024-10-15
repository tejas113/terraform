resource "aws_instance" "db" {
  ami                    = "ami-08cc00f145da732e4"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = "t2.micro"

  tags = {
    Name = "db"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allowing SSH access"

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
    CreatedBy = "Tejas "
  }
}


