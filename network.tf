resource "aws_vpc" "ec2" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
}

resource "aws_subnet" "ec2" {
  # http://blog.itsjustcode.net/blog/2017/11/18/terraform-cidrsubnet-deconstructed/
  cidr_block = cidrsubnet(aws_vpc.ec2.cidr_block, 3, 1)
  vpc_id = aws_vpc.ec2.id
  availability_zone = "${var.region}a"
}

resource "aws_internet_gateway" "ec2" {
  vpc_id = aws_vpc.ec2.id
}

resource "aws_route_table" "ec2" {
  vpc_id = aws_vpc.ec2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ec2.id
  }
}
resource "aws_route_table_association" "ec2" {
  subnet_id = aws_subnet.ec2.id
  route_table_id = aws_route_table.ec2.id
}
