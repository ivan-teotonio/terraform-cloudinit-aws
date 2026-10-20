output "instance_public_ip" {
    description = "Endereço IP público da instância EC2" 
    value       = aws_instance.app_server.public_ip
}

output "instance_id" {
    description = "ID da instância EC2" 
    value       = aws_instance.app_server.id
}