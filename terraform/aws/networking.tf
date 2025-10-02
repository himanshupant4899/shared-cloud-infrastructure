resource "aws_vpc" "tooling" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.tooling.id
  cidr_block = "10.0.0.0/28"
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.tooling.id
  cidr_block = "10.0.0.16/28"
  tags = {
    Name = "private_subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.tooling.id
  tags = {
    Name = "igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.tooling.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  route {
    cidr_block = aws_vpc.tooling.cidr_block
    gateway_id = "local"
  }

  tags = {
    Name = "public_RT"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.tooling.id

  route {
    cidr_block = aws_vpc.tooling.cidr_block
    gateway_id = "local"
  }

  tags = {
    Name = "private_RT"
  }
}

resource "aws_route_table_association" "public_subnet" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_subnet" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}