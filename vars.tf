locals {
    common_tags = {
        tag_creator = "Nick Arash"
        tag_owner = "Kanthi"
        tag_dept = "DevOps"
        tag_project = "GoSecure"
    }
}

variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "public_tag_name" {
  type = string
}

variable "private_tag_name" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}

variable "resource_tag_owner" {
  type = string
}

variable "resource_tag_creator" {
  type = string
}

variable "resource_tag_dept" {
  type = string
}

variable "resource_tag_project" {
  type = string
}
