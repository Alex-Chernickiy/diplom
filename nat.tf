resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.nat_eip1.id
  subnet_id     = aws_subnet.public-subnet1.id
  tags = {
    Name = "my-nat-gateway1"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat_eip2.id
  subnet_id     = aws_subnet.public-subnet2.id
  tags = {
    Name = "my-nat-gateway2"
  }
}
