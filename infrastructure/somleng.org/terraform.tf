provider "aws" {
  profile = "${var.terraform_profile}"
  region  = "${var.aws_region}"
}

provider "aws" {
  profile = "${var.terraform_profile}"
  region  = "us-east-1"
  alias   = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "infrastructure.somleng.org"
    key     = "terraform.tfstate"
    encrypt = true
  }

  required_version = "~> 0.11.14"
}
