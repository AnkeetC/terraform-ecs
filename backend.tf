terraform {
  backend "s3" {
    bucket  = "ankeeterabucket"
    key     = "ankeeterabucket/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
