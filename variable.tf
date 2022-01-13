variable "vpc_cidr" {
  type        = string
  description = "The IP range to use for the VPC"
  default     = "10.0.0.0/16"
}

variable "tenancy" {
  type        = string
  description = "Tenancy for VPc"
  default     = "default"
}

variable "OS_subnet_cidr" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.0.0/25"
}

variable "OS_subnet_cidr2" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.0.128/25"
}

variable "OS_subnet_cidr3" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.1.0/25"
}

variable "nuxeo_subnet_cidr" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.1.128/25"
}

variable "nuxeo_subnet_cidr2" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.2.128/25"
}

variable "nuxeo_subnet_cidr3" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.2.0/25"
}

variable "kafka_subnet_cidr" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.3.0/25"
}

variable "kafka_subnet_cidr2" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.3.128/25"
}

variable "kafka_subnet_cidr3" {
  type        = string
  description = "The IP range to use for the Subnet"
  default     = "10.0.4.0/25"
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


