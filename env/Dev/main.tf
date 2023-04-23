module "aws-dev" {
  source = "../../infra"
  machineName = "machine-dev-terraform"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-DEV"
  securityGroupName = "development-team-access"
  securityGroupDescription = "Acesso para o time de desenvolvimento."
  minimo = 0
  maximo = 1
  nomeGrupo = "dev"
}

output "IP" {
  value = module.aws-dev.IP_publico
}
