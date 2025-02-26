provider "aws" {
  region     = local.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

locals {
  account_id          = var.account_id
  region              = "ca-central-1"
  prefix              = "aws-kev-test"
  tfstate_bucket_name = "tfstate"
  java_app_name       = "lexum-app"
  java_app_full_name  = "${local.prefix}-${local.java_app_name}"
}

terraform {
  backend "s3" {
    bucket  = "aws-kev-test-tfstate"
    key     = "terraform.tfstate"
    region  = "ca-central-1"
    encrypt = true
  }
}

module "lexum" {
  source = "git@github.com:kevind-lexum-technical-test/aws-terraform-ecosystem-lexum.git?ref=0.0.4"

  enabled           = true
  create_s3_tfstate = false
  prefix            = local.prefix
  account_id        = local.account_id

  vpc_name            = "lexum-test-vpc"
  vpc_cidr            = "10.32.0.0/20"
  vpc_azs             = ["ca-central-1a", "ca-central-1b", "ca-central-1d"]
  vpc_private_subnets = ["10.32.1.0/24", "10.32.2.0/24", "10.32.3.0/24"]
  vpc_public_subnets  = ["10.32.9.0/24", "10.32.10.0/24", "10.32.11.0/24"]

  java_server_name = "java-server"
  java_app_name    = local.java_app_full_name
  # Basic amazon ami
  java_server_image_id      = "ami-05073582a4b03d785"
  java_server_instance_type = "t2.micro"

  sns_alert_email = "kevin.diep94@gmail.com"

  rds_identifier  = "lexum-rds"
  rds_db_username = var.rds_db_username
  rds_db_password = var.rds_db_password

  ssm_parameters = {
    "/lexum/${local.java_app_full_name}/ecr/version" = {
      description = "Version of the image to take"
      type        = "String"
      value       = "0.0.1"
    },
    "/lexum/${local.java_app_full_name}/port" = {
      description = "The master password for the RDS instance"
      type        = "SecureString"
      value       = "8080"
    },
    "/lexum/${local.java_app_full_name}/name" = {
      description = "The db name for the RDS instance"
      type        = "SecureString"
      value       = local.java_app_full_name
    }
  }
  s3_tfstate_bucket_name = local.tfstate_bucket_name
  ecr_repo_names         = [local.java_app_name]
}
