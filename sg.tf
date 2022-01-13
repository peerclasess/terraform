resource "aws_security_group" "nuxeo" {
  name        = "NuxeoSG"
  description = "Allow TLS inbound traffic to Nuxeo servers"
  vpc_id      = aws_vpc.arms.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SecurityGroup-Nuxeo"
  }
}

resource "aws_security_group" "kafka" {
  name        = "NuxeoSG"
  description = "Allow TLS inbound traffic to Nuxeo servers"
  vpc_id      = aws_vpc.arms.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SecurityGroup-Kafka"
  }
}

resource "aws_security_group" "opensearch" {
  name        = "NuxeoSG"
  description = "Allow TLS inbound traffic to Nuxeo servers"
  vpc_id      = aws_vpc.arms.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SecurityGroup-OpenSearch"
  }
}

