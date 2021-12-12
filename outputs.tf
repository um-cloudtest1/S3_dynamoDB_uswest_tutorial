output "public_ip" {
  description = "Public IPv4 of the EC2 instance"
  value       = aws_instance.app_server.public_ip  # changed from this to app-server
}
