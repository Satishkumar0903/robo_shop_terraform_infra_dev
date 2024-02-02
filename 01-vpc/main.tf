module "roboshop" {
  source = "git::https://github.com/Satishkumar0903/terraform-aws-vpc1.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # public subnet
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet
  private_subnets_cidr = var.private_subnets_cidr
  database_subnets_cidr = var.database_subnets_cidr
    #peering
  is_peering_required = var.is_peering_required
}