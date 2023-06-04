resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.My-VPC.id
}


resource "aws_route_table" "RT" {
  vpc_id =  aws_vpc.My-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
}


resource "aws_route_table_association" "RT_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.RT.id
}