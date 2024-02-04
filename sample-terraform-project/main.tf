provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0c7217cdde317cfec"
  instance_type_value = "t2.micro"
  subnet_id_value ="subnet-028487abb80b97423"
  
} 