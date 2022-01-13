resource "aws_subnet" "nuxeo-1" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az-1
  tags = {
    Name = "Nuxeo-Private-SN1"
  }
}

resource "aws_subnet" "nuxeo-2" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az-2
  tags = {
    Name = "Nuxeo-Private-SN2"
  }
}

resource "aws_subnet" "nuxeo-3" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az-3
  tags = {
    Name = "Nuxeo-Private-SN3"
  }
}

resource "aws_subnet" "kafka-1" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr2
  availability_zone = var.az-1
  tags = {
    Name = "Kafka-Private-SN1"
  }
}

resource "aws_subnet" "kafka-2" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr2
  availability_zone = var.az-2
  tags = {
    Name = "Kafka-Private-SN2"
  }
}

resource "aws_subnet" "kafka-3" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr2
  availability_zone = var.az-3
  tags = {
    Name = "Kafka-Private-SN3"
  }
}

resource "aws_subnet" "opensearch-1" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr3
  availability_zone = var.az-1
  tags = {
    Name = "OS-Dev-Prviate-SN1"
  }
}

resource "aws_subnet" "opensearch-2" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr3
  availability_zone = var.az-2
  tags = {
    Name = "OS-Dev-Prviate-SN2"
  }
}

resource "aws_subnet" "opensearch-3" {
  vpc_id     = aws_vpc.arms.id
  cidr_block = var.subnet_cidr3
  availability_zone = var.az-3
  tags = {
    Name = "OS-Dev-Prviate-SN3"
  }
}