
# k8s-gitops-platform

Terraform infrastructure repository for Capstone Project 5.

## Purpose

This repository provisions:

- AWS VPC
- Public and private subnets
- NAT Gateway
- Internet Gateway
- EKS cluster
- EKS worker node group
- IAM roles
- Security groups
- Terraform outputs for kubeconfig and Ansible inventory integration

## Region

Default AWS region: ap-south-1

## Deployment Flow

```bash
terraform init
terraform validate
terraform plan
terraform apply
