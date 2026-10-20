variable "aws_region" {
    type    = string 
    default = "us-east-1" 
    description = "Region da AWS para provisionamento"
}

variable "instance_type" {
    type        = string
    default     = "us-east-1" 
    description = "Região da AWS para provisionamento"
}

variable "instance_type" {
    type        = string 
    default     = "t2.micro" 
    description = "Tipo de instância EC2"
}

variable "environment" {
    type        = string 
    default     = "dev" 
    description = "Ambiente de implementação"
}