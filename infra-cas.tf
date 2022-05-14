
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.49"
    }
  }
}

provider "aws" {
  region = us-east-1
}




module "rds-aurora" {
  source                             = "https://github.com/SrDinga/Aurora-postgre-infra.git"
  aws_rds_aurora_cluster_config      = var.aws_rds_aurora_cluster_config
  aws_aurora_postgresql_cluster_tags = var.aws_aurora_postgresql_cluster_tags
  environment                        = var.environment

}
