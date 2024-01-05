# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-mick-bucket"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "eu-west-2"
    profile        = "micky"
    dynamodb_table = "terraform"
  }
}