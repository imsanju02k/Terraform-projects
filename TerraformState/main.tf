provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "sanjay" {
  instance_type = "t2.micro"
  ami="ami-0c7217cdde317cfec"
  subnet_id = "subnet-028487abb80b97423"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sanjay-s3-terraform"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST" 
  hash_key = "LockID"

  attribute {
    name="LockID"
    type = "S"
  }
}

