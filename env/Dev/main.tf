module "aws-dev" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-DEV"
  securityGroupName = "development-team-access"
  securityGroupDescription = "Acesso para o time de desenvolvimento."
}

output "IP" {
  value = module.aws-dev.IP_publico
}
