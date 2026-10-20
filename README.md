# Provisionamento de Infraestrutura com Terraform, Cloud-Init e GitHub Actions

Este repositório contém a automação de infraestrutura como código (IaC) para criação de uma instância Linux (Ubuntu) na AWS com provisionamento de serviços automatizado via Cloud-Init e pipeline CI/CD no GitHub Actions.

## Arquitetura e Componentes

- **Terraform**: Provisiona uma instância EC2, Security Group (portas 80 e 22) e associa o Cloud-Init.
- **Cloud-Init (`user-data.yaml`)**: Define o hostname, atualiza o sistema e instala/inicializa Nginx e Docker.
- **GitHub Actions**: Pipeline automatizada que executa `fmt`, `validate`, `plan` e `apply`.

## Pré-requisitos para Execução Local

1. [Terraform](https://www.terraform.io/downloads) (>= 1.5.0) instalado.
2. [AWS CLI](https://aws.amazon.com/cli/) configurado com credenciais válidas.

## Passos para Execução Manual (Local)

```bash
# Inicializar o diretório
terraform init

# Verificar formatação e validar sintaxe
terraform fmt
terraform validate

# Visualizar o plano de execução
terraform plan

# Aplicar a infraestrutura
terraform apply -auto-approve

# Destruir a infraestrutura após validação
terraform destroy -auto-approve
```
