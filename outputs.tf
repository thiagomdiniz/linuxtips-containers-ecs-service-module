output "aws_ecr_repository_url" {
  description = "Expõe a URL do ECR criada pelo módulo para que o app possa fazer o push da imagem de container."
  value       = aws_ecr_repository.main.repository_url
}