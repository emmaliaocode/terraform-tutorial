module "ec2" {
  source = "./modules/ec2"

  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags                   = var.tags
}