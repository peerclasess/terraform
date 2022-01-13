variable "vpc_cidr" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.0/25"
}

variable "subnet_cidr2" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.128/25"
}

variable "subnet_cidr3" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.1.0/25"
}

variable "az-1" {
  type        = string
  description = "AZ for Subnets"
  default     = "us-east-1a"
}

variable "az-2" {
  type        = string
  description = "AZ for Subnets"
  default     = "us-east-1a"
}

variable "az-3" {
  type        = string
  description = "AZ for Subnets"
  default     = "us-east-1a"
}

variable "instance_type" {
  type        = string
  description = "InstanceType"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "InstanceType"
  default     = "ami-ba547sddf25a"
}

variable "msk_instance_type" {
  type        = string
  description = "MSK InstanceType"
  default     = "kafka.m5.large"
}


