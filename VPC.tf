provider "aws" {
  region = "${var.AWS_REGION}"
  access_key= "${var.aws_access_key}"
  secret_key= "${var.aws_secret_key}"
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = "${aws_vpc.Devvpc.id}"
}

resource "aws_vpc" "Devvpc" {
  
  cidr_block = "${var.CidrBlock}"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"

  tags = {
    Product       = "${var.ProductName}"
    EnvironmentType = "${var.EnvironmentType}"
    Name = "${var.VpcName}"
  }

}

output "vpc_id" {
  value = "${aws_vpc.Devvpc.id}"
}