# locals {
#   vpc_name                             = "somleng"
#   vpc_cidr_block                       = "10.0.0.0/24"
#   vpc_azs                              = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#   vpc_twilreapi_ec2_subnet_cidr_blocks = ["10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28"]
#   vpc_intra_subnet_cidr_blocks         = ["10.0.0.112/28", "10.0.0.128/28", "10.0.0.144/28"]
#   vpc_database_subnet_cidr_blocks      = ["10.0.0.160/28", "10.0.0.176/28", "10.0.0.192/28"]
#   vpc_public_subnet_cidr_blocks        = ["10.0.0.208/28", "10.0.0.224/28", "10.0.0.240/28"]
#   vpc_private_subnet_cidr_blocks       = "${concat(local.vpc_twilreapi_ec2_subnet_cidr_blocks)}"
# }

module "vpc" {
  source = "../modules/vpc"
  name   = "${local.vpc_name}"

  cidr             = "${local.vpc_cidr_block}"
  azs              = "${local.vpc_azs}"
  intra_subnets    = "${local.vpc_intra_subnet_cidr_blocks}"
  private_subnets  = "${local.vpc_private_subnet_cidr_blocks}"
  public_subnets   = "${local.vpc_public_subnet_cidr_blocks}"
  database_subnets = "${local.vpc_database_subnet_cidr_blocks}"
}
