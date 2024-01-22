resource "aws_security_group" "allow_all" {
  name        = "Docker_SG"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "Allowing all traffic"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.sg_cidr
  }

  tags = {
    Name = "Docker_SG"
  }
}