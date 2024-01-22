resource "aws_instance" "name" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.allow_all.name]
  # "${file("user-data-apache.sh")}"
  user_data = file("docker.sh")
  tags = merge({
    Name = var.instance_names
  }, var.common_tags)
}