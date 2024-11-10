locals {
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags                   = var.tags
}

resource "aws_instance" "my-ec2" {
  ami                    = local.ami_id
  instance_type          = local.instance_type
  subnet_id              = local.subnet_id
  vpc_security_group_ids = local.vpc_security_group_ids
  tags                   = local.tags
}