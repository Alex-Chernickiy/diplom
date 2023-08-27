resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "my-routing-table-public"
  }
}

resource "aws_route_table" "rtnat1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat1.id
  }

  tags = {
    Name = "my-routing-table-nat1"
  }
}

resource "aws_route_table" "rtnat2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat2.id
  }

  tags = {
    Name = "my-routing-table-nat2"
  }
}


resource "aws_route_table_association" "rta_public1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "rta_public2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "rta_private1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.rtnat1.id
}

resource "aws_route_table_association" "rta_private2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.rtnat2.id
}
