variable "ami_id" {
  description = "the id of the AMI"
  type        = string
}

variable "instance_type" {
  description = "the type of the instance"
  type        = string
}

variable "subnet_id" {
  description = "the id for the subnet"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "the security group of the instance"
  type        = list(string)
}

variable "tags" {
  description = "the tags for the instance"
  type        = map(string)
}