resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_pub_subnet1
  availability_zone       = var.av_zone1
  map_public_ip_on_launch = true
  tags = {
    Name = "my-${var.env}-public-subnet1-${var.av_zone1}"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_pub_subnet2
  availability_zone       = var.av_zone2
  map_public_ip_on_launch = true
  tags = {
    Name = "my-${var.env}-public-subnet2-${var.av_zone2}"
  }
}

resource "aws_subnet" "private-subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_pri_subnet1
  availability_zone       = var.av_zone1
  map_public_ip_on_launch = false
  tags = {
    Name = "my-${var.env}-private-subnet1-${var.av_zone1}"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_pri_subnet2
  availability_zone       = var.av_zone2
  map_public_ip_on_launch = false
  tags = {
    Name = "my-${var.env}-private-subnet2-${var.av_zone2}"
  }
}
