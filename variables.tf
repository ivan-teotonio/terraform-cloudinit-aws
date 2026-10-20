variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Região da AWS para provisionamento"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Tipo da instância EC2"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Ambiente de implantação"
}