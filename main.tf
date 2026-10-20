# Busca a AMI oficial do Ubuntu 22.04 LTS mais recente
data "aws_ami" "ubuntu" {
    most_recent = true 
    owners      = ["099720109477"] # Canonical

    filter {
        name   = "name" 
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    } 

    filter {
        name   = "virtualization-type" 
        values = ["hvm"]
    }
}

# Security Group para liberar HTTP (80) e SSH (22)
resource "aws_security_group" "web_sg" {
    name        = sg_app_${var.environment}
    description = "Permite trefego HTTP e SSH"


    ingress {
        description = "HTTP" 
        from_port   = 80 
        to_port     = 80 
        protocol    = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "SSH" 
        from_port   = 22 
        to_port     = 22 
        protocol    = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Saida irrestrita" 
        from_port   = 0 
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg_app_${var.environment}"
        Environment = var.environment
    }
}