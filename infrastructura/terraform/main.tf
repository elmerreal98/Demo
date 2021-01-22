
provider "aws" {}

terraform {
  backend "s3" {
    bucket = "demo-bucket-cloudformation"
    key    = "terraform/main.tfstate"
    region = "us-west-2"
  }
}
module "Roles" {
  source = "./modules/Roles"
}

