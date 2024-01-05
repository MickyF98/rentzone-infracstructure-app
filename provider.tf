# configure aws provider to establish a secure connection between terraform and aws
provider "aws" {
  region  = var.region
  profile = "micky"

  default_tags {
    tags = {
      "Automation"  = "terraform"
      "project"     = var.project_name
      "Environment" = var.environment
    }
  }
}