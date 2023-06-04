resource "aws_vpc" "My-VPC" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "My-VPC"
  }

}

