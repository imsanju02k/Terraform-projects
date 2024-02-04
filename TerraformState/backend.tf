terraform {
    backend "s3" {
        bucket = "sanjay-s3-terraform"
        region = "us-east-1"
        key = "sanjay/terraform.tfstate"
        dynamodb_table = "terraform_lock"
      
    }
}


