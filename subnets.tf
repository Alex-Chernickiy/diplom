resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "my-public-subnet1-1a"
    # "kubernetes.io/cluster/eks" = "shared"
    # "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.64.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "my-public-subnet2-1b"
    # "kubernetes.io/cluster/eks" = "shared"
    # "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private-subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.128.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "my-private-subnet1-1a"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.10.192.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "my-private-subnet2-1b"
  }
}
