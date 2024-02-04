provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "demo-terraform" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    subnet_id = "subnet-014250d00de54266d"
    key_name = "aws_login"
  
}