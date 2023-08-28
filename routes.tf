resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr_rt
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.cidr_rt_name
  }
}

resource "aws_route_table" "rtnat1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr_rtnat1
    gateway_id = aws_nat_gateway.nat1.id
  }

  tags = {
    Name = var.cidr_rtnat1_name
  }
}

resource "aws_route_table" "rtnat2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr_rtnat2
    gateway_id = aws_nat_gateway.nat2.id
  }

  tags = {
    Name = var.cidr_rtnat2_name
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
