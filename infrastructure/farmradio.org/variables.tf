locals {
  route53_domain_name          = "farmradio.org"
  internal_route53_domain_name = "internal.farmradio.org"
  eb_zone_id                   = "Z16FZ9L249IFLT"
}

locals {
  rails_db_pool = "32"
}

locals {
  twilreapi_identifier                  = "somleng-twilreapi"
  twilreapi_route53_record_name         = "twilreapi"
  twilreapi_deploy_repo                 = "somleng/twilreapi"
  twilreapi_deploy_branch               = "master"
  twilreapi_internal_api_http_auth_user = "admin"
}

locals {
  somleng_freeswitch_route53_record_name     = "somleng-freeswitch"
  somleng_freeswitch_identifier              = "somleng-freeswitch"
  somleng_freeswitch_xmpp_port               = "5222"
  somleng_freeswitch_mod_rayo_domain_name    = "rayo.somleng.org"
  somleng_freeswitch_mod_rayo_user           = "rayo"
  somleng_freeswitch_deploy_repo             = "somleng/freeswitch-config"
  somleng_freeswitch_deploy_branch           = "master"
  somleng_freeswitch_simulator_deploy_branch = "simulator"
}

locals {
  somleng_adhearsion_route53_record_name = "somleng-adhearsion"
  somleng_adhearsion_identifier          = "somleng-adhearsion"
  somleng_adhearsion_core_username       = "${local.somleng_freeswitch_mod_rayo_user}@${local.somleng_freeswitch_mod_rayo_domain_name}"
  somleng_adhearsion_drb_port            = "9050"
  somleng_adhearsion_deploy_repo         = "somleng/somleng-adhearsion"
  somleng_adhearsion_deploy_branch       = "master"
}

locals {
  scfm_route53_record_name = "scfm"
  scfm_identifier          = "somleng-scfm"
  scfm_deploy_repo         = "somleng/somleng-scfm"
  scfm_deploy_branch       = "master"
}
locals {
  vpc_name                             = "somleng"
  vpc_cidr_block                       = "10.0.0.0/24"
  vpc_azs                              = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  vpc_twilreapi_ec2_subnet_cidr_blocks = ["10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28"]
  vpc_intra_subnet_cidr_blocks         = ["10.0.0.112/28", "10.0.0.128/28", "10.0.0.144/28"]
  vpc_database_subnet_cidr_blocks      = ["10.0.0.160/28", "10.0.0.176/28", "10.0.0.192/28"]
  vpc_public_subnet_cidr_blocks        = ["10.0.0.208/28", "10.0.0.224/28", "10.0.0.240/28"]
  vpc_private_subnet_cidr_blocks       = "${concat(local.vpc_twilreapi_ec2_subnet_cidr_blocks)}"
}


# locals {
#   vpc_name                             = "somleng"
#   vpc_cidr_block                       = "10.0.0.0/24"
#   vpc_azs                              = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
#   vpc_twilreapi_ec2_subnet_cidr_blocks = ["10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28"]
#   vpc_intra_subnet_cidr_blocks         = ["10.0.0.112/28", "10.0.0.128/28", "10.0.0.144/28"]
#   vpc_database_subnet_cidr_blocks      = ["10.0.0.160/28", "10.0.0.176/28", "10.0.0.192/28"]
#   vpc_public_subnet_cidr_blocks        = ["10.0.0.208/28", "10.0.0.224/28", "10.0.0.240/28"]
#   vpc_private_subnet_cidr_blocks       = "${concat(local.vpc_twilreapi_ec2_subnet_cidr_blocks)}"
# }

variable "aws_region" {
  default = "eu-west-1"
}

variable "terraform_profile" {
  default = "somleng-terraform"
}
