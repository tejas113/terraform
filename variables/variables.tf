variable "image_id" {
  type        = string
  default     = "ami-08cc00f145da732e4"
  description = "RHEL-9 AMI ID"
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Module      = "DB"
    Name        = "DB"
  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allow_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}
