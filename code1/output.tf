output "jenks_url" {
  value = "http://${aws_instance.manner.public_ip}:8080"
}