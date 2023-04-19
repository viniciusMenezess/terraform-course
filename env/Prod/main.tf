module "aws_prod" {
  source = "../../infra"
  machineName = "machine-prod-terraform"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-PROD"
  securityGroupName = "production-team-access"
  securityGroupDescription = "Acesso para o time de producao."
}

output "IP" {
  value = module.aws_prod.IP_publico
}
