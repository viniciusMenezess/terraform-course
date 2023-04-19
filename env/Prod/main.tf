module "aws_prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IaC-PROD"
}

output "IP" {
  value = module.aws_prod.IP_publico
}