resource "aws_instance" "app_server" {
  ami           = "ami-0e4b5d31e60aa0acd"
  instance_type = "t2.micro"

  tags = local.tags
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}