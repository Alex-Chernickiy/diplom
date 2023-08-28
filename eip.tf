resource "aws_eip" "nat_eip1" {
  #vpc        = true
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_eip" "nat_eip2" {
  depends_on = [aws_internet_gateway.gw]
}
