module "aws_prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-PROD"
  securityGroupName = "production-team-access"
  securityGroupDescription = "Acesso para o time de produção."
}

output "IP" {
  value = module.aws_prod.IP_publico
}