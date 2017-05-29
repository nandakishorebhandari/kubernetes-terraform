resource "aws_security_group" "module_aws_network_security_master" {
  name        = "seg-group-master"
  description = "k8s security group"

  # vpc_id      = "${var.vpc_id}"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "seg-group-master"
    Environment = "test"
    Description = "k8s security group"
  }
}