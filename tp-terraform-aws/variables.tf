variable "aws_region" {
  description = "Région AWS cible"
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Nom du projet"
  type        = string
}

variable "environment" {
  description = "Environnement (dev, staging, prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "L'environnement doit être dev, staging ou prod."
  }
}

variable "owner" {
  description = "Nom ou email du responsable"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR du subnet public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "my_ip" {
  description = "Votre IP publique pour autoriser SSH (format CIDR : x.x.x.x/32)"
  type        = string
}

variable "is_localstack" {
  description = "true en Phase 1 LocalStack, false en Phase 2 AWS réel"
  type        = bool
  default     = false
}

variable "ami_id" {
  description = "AMI ID Ubuntu"
  type        = string
  default     = "ami-0df7af28392da97e9"  # Ubuntu 24.04 LTS eu-west-3
}
