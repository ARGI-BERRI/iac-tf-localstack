resource "aws_secretsmanager_secret" "localstack-secrets" {
  name = "localstack-secrets"
}

resource "aws_secretsmanager_secret_version" "localstack-secrets" {
  secret_id     = aws_secretsmanager_secret.localstack-secrets.id
  secret_string = jsonencode({ key = "value" })
}
