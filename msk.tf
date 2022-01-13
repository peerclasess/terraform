resource "aws_msk_cluster" "arms_dev" {
  cluster_name           = "arms-DEV-msk"
  kafka_version          = "2.4.1"
  number_of_broker_nodes = 3

  broker_node_group_info {
    instance_type   = var.msk_instance_type
    ebs_volume_size = 50
    client_subnets = [
      aws_subnet.kafka-1.id,
      aws_subnet.kafka-2.id,
      aws_subnet.kafka-3.id,
    ]
    security_groups = [aws_security_group.kafka.id]
  }

  tags = {
    Name = "arms-msk"
  }
}

output "zookeeper_connect_string" {
  value = aws_msk_cluster.arms_dev.zookeeper_connect_string
}

output "bootstrap_brokers_tls" {
  description = "TLS connection host:port pairs"
  value       = aws_msk_cluster.arms_dev.bootstrap_brokers_tls
}