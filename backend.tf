terraform {
  backend "s3" {
    bucket         = "terraform-state-sant-rhay"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-sant-rhay"
    encrypt        = true
  }
}
