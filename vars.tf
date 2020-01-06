variable "AWS_REGION" {    
    default = "us-east-1"
}
variable "VpcName" {    
    default = "terraVPC"
}
variable "EnvironmentType" {    
    default = "Terra-dev"
}
variable "ProductName" {    
    default = "terra-product"
}
variable "CidrBlock" {    
    default = "10.0.0.0/16"
}
#change