variable "aws_region" {
  description = "AWS region where the EKS cluster will be created"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for naming AWS resources"
  type        = string
  default     = "k8s-gitops-platform"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "k8s-gitops-platform-eks"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.33"
}

variable "vpc_cidr" {
  description = "CIDR block for the EKS VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.20.11.0/24", "10.20.12.0/24"]
}

variable "node_instance_types" {
  description = "EC2 instance types for EKS worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 2
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 4
}

variable "ssh_public_key_path" {
  description = "Local path of SSH public key used for worker node access"
  type        = string
  default     = "~/.ssh/k8s-capstone-key.pub"
}

variable "allowed_ssh_cidr" {
  description = "Public IP CIDR allowed to SSH into worker nodes"
  type        = string
}
