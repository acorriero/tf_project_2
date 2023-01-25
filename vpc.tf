module "instance_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private
  public_subnets  = var.vpc_public

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
