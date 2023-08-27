terraform {
  backend "s3" {
    bucket = "my-bucket-chalex"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "my-terraform-lockstate"
  }
}
