provider "aws" {
    profile = "default"
    region = "us-west-2"
}


#Creating VPC

resource "aws_vpc" "gosecure" {
  cidr_block = var.vpc_cidr

  tags = {
    Name    = var.vpc_name
    Creator = var.resource_tag_creator
    Owner   = var.resource_tag_owner
    Project = var.resource_tag_project
    Dept    = var.resource_tag_dept    
  }
}


#Creating Public subnet

resource "aws_subnet" "public_subnet" {
  
  vpc_id                  = aws_vpc.gosecure.id
  cidr_block              = var.public_subnet_cidr  
  availability_zone       = "${var.aws_region}a"  
  map_public_ip_on_launch = true

  tags = {
    Name    = var.public_tag_name    
    Creator = var.resource_tag_creator
    Owner   = var.resource_tag_owner
    Project = var.resource_tag_project
    Dept    = var.resource_tag_dept   
  }
}

#Creating Private subnet

resource "aws_subnet" "private_subnet" {

  vpc_id            = aws_vpc.gosecure.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = "${var.aws_region}a"

  tags = {
    Name    = var.private_tag_name
    Creator = var.resource_tag_creator
    Owner   = var.resource_tag_owner
    Project = var.resource_tag_project
    Dept    = var.resource_tag_dept   
  }
}











