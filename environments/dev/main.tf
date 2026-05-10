module "ec2" {
  source = "../../modules/ec2"

  instance_count     = var.instance_count
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  subnet_id          = var.subnets[var.subnet_type]
  security_group_ids = var.security_group_ids
  ebs_size           = var.ebs_size
  instance_name      = var.instance_name
}
