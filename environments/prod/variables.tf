variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "ebs_size" {
  description = "EBS volume size (GB)"
  type        = number
}

variable "instance_name" {
  description = "Instance name prefix"
  type        = string
}

variable "subnet_type" {
  description = "Which subnet to use? (public or private)"
  type        = string
}

variable "subnets" {
  description = "Map of subnet IDs"
  type        = map(string)
}
