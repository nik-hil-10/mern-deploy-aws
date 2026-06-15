# =============================================================================
# Input Variables
# =============================================================================

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "aws_profile" {
  description = "AWS CLI profile to use (SSO profile name)"
  type        = string
  default     = "nikhil"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "TravelMemory"
}

# ---------- Networking ----------

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# ---------- EC2 ----------

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of an existing AWS key pair for SSH access"
  type        = string
}

variable "my_ip" {
  description = "Your public IP address for SSH access (e.g., 203.0.113.50/32)"
  type        = string
}
