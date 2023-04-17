module "aws-prod" {
 source = "../../infra"
 instancia = "t2.micro"
 regiao = "us-east-1"
 chave = "IaC-PROD"
}
