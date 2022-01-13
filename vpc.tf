resource "aws_vpc" "arms" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy
  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "arms_internal_route" {
  vpc_id = aws_vpc.arms.id
  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "arms_internal_route_association-1" {
  subnet_id      = aws_subnet.nuxeo.id
  route_table_id = aws_route_table.arms_internal_route.id
}

resource "aws_route_table_association" "arms_internal_route_association-2" {
  subnet_id      = aws_subnet.kafka.id
  route_table_id = aws_route_table.arms_internal_route.id
}

resource "aws_route_table_association" "arms_internal_route_association-3" {
  subnet_id      = aws_subnet.opensearch.id
  route_table_id = aws_route_table.arms_internal_route.id
}

resource "aws_ec2_transit_gateway" "arms-tgw" {
  description = "transitgateway for arms VPC"
  tags = {
    Name = "Arms-TransitGateway"
  }
}

