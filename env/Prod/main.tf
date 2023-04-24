module "aws_prod" {
  source = "../../infra"
  machineName = "machine-prod-terraform"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-PROD"
  securityGroupName = "production-team-access"
  securityGroupDescription = "Acesso para o time de producao."
  minimo = 1
  maximo = 10
  nomeGrupo = "prod"
  producao = true
}
