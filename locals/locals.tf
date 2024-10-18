locals {
  ami_id        = "ami-08cc00f145da732e4"
  sg_id         = "sg-010e872a456c87217"
  instance_type = "t3.micro"
  tags = {
    Name = "locals"
  }
}
