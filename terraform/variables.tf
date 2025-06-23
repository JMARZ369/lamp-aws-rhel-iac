# terraform/variables.tf
variable "aws_region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-east-2" # Ohio (change if needed)
}

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

# EC2 Key Pair Name

variable "key_pair_name" {
  description = "AWS EC2 Key Pair Name"
  type        = string
}
