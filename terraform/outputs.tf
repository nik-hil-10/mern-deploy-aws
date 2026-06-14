# =============================================================================
# Outputs — Important resource information
# =============================================================================

output "web_server_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web_server.public_ip
}

output "web_server_private_ip" {
  description = "Private IP address of the web server"
  value       = aws_instance.web_server.private_ip
}

output "db_server_private_ip" {
  description = "Private IP address of the database server"
  value       = aws_instance.db_server.private_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private.id
}

output "web_sg_id" {
  description = "ID of the web server security group"
  value       = aws_security_group.web_sg.id
}

output "db_sg_id" {
  description = "ID of the database security group"
  value       = aws_security_group.db_sg.id
}

output "ubuntu_ami_id" {
  description = "AMI ID used for EC2 instances"
  value       = data.aws_ami.ubuntu.id
}
