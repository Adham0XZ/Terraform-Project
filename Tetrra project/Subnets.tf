
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.My-VPC.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public"
  }
}




resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.My-VPC.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private"
  }
}