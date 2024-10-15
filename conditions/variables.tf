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

variable "instance_name" {
  default = "db"
}
