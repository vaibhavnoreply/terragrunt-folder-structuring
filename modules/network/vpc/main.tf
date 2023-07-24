module "vpc" {
  source              = "terraform-aws-modules/vpc/aws"
  version             = "5.0.0"

  name                = var.vpc_name
  cidr                = "172.40.0.0/16"
  azs                 = var.azs
  private_subnets     = ["172.40.0.0/21", "172.40.8.0/21"]
  public_subnets      = ["172.40.16.0/21", "172.40.24.0/21"]

  tags = {
    Terraform = "true"
    Environment = "learning"
  }
}