variable "region" {
  type        = string
  description = "Região onde os recursos do AWS serão provisionados."
}

variable "cluster_name" {
  type        = string
  description = "Nome do cluster ECS onde o serviço será implantado."
}

variable "service_name" {
  type        = string
  description = "Nome do serviço a ser utilizado no ECS ou identificador similar."
}

variable "vpc_id" {
  type        = string
  description = "ID da VPC onde os recursos relacionados ao serviço serão provisionados."
}

variable "private_subnets" {
  type        = list(string)
  description = "Lista de IDs das subnets privadas onde o serviço será implantado."
}

variable "service_port" {
  type        = number
  description = "Porta na qual o serviço estará acessível."
}

variable "service_cpu" {
  type        = number
  description = "Quantidade de CPU alocada para o serviço, especificada em unidades de CPU do ECS."
}

variable "service_memory" {
  type        = number
  description = "Quantidade de memória alocada para o serviço, especificada em MB."
}

variable "service_listener" {
  type        = string
  description = "ARN do listener do Application Load Balancer que será usado pelo serviço."
}

variable "service_task_execution_role" {
  type        = string
  description = "ARN da role de execução de tarefas do ECS que o serviço usará para executar."
}

variable "service_healthcheck" {
  type        = map(any)
  description = "Configuração do health check do serviço, incluindo caminho e protocolo."
}

variable "service_launch_type" {
  type        = string
  description = "Tipo de lançamento para o serviço no ECS, como 'FARGATE' ou 'EC2'."
}

variable "service_task_count" {
  type        = number
  description = "Número de instâncias da tarefa a serem executadas simultaneamente no serviço."
}

variable "service_hosts" {
  type        = list(string)
  description = "Lista de hosts associados ao serviço, geralmente especificados para configurações DNS."
}

variable "environment_variables" {
  type        = list(map(string))
  description = "Lista de variáveis de ambiente que serão passadas para o serviço."
}

variable "capabilities" {
  type        = list(string)
  description = "Lista de capacidades necessárias para a execução do serviço, como 'CAP_SYS_ADMIN' para recursos Linux específicos."
}

variable "scale_type" {
  default = null
}

variable "task_minimum" {
  default = 3
}

variable "task_maximum" {
  default = 10
}

# Autoscaling de CPU

variable "scale_out_cpu_threshold" {
  default = 80
}

variable "scale_out_adjustment" {
  default = 1
}

variable "scale_out_comparison_operator" {
  default = "GreaterThanOrEqualToThreshold"
}

variable "scale_out_statistic" {
  default = "Average"
}

variable "scale_out_period" {
  default = 60
}

variable "scale_out_evaluation_periods" {
  default = 2
}

variable "scale_out_cooldown" {
  default = 60
}

variable "scale_in_cpu_threshold" {
  default = 30
}

variable "scale_in_adjustment" {
  default = -1
}

variable "scale_in_comparison_operator" {
  default = "LessThanOrEqualToThreshold"
}

variable "scale_in_statistic" {
  default = "Average"
}

variable "scale_in_period" {
  default = 120
}

variable "scale_in_evaluation_periods" {
  default = 3
}

variable "scale_in_cooldown" {
  default = 120
}

# Tracking CPU

variable "scale_tracking_cpu" {
  default = 80
}

# Tracking Requests

variable "alb_arn" {
  default = null
}

variable "scale_tracking_requests" {
  default = 0
}