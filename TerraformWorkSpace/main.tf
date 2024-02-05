# this file can be any where like new folder or new git hub repo until it have the permission.

provider "aws" {
    region = "us-east-1"
}

variable "ami" {
    description = "value"
}

variable "instance_type" {
    description = "value"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "prod" = "t2.medium"

    }
}

module "ec2_instance" {

    source = "/workspaces/Devops-files/TerraformWorkSpace/modules/ec2_instance1"
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.medium")
  
}