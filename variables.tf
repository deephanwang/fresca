variable "public_key" {
  description = "Public key of AWS keypair for launching/connecting to Backend Application hosts"
  type = "string"
}

variable "aws_profile" {
  description = "The AWS profile to use when creating AWS resources"
  type = "string"
}

variable "aws_region" {
  description = "AWS region in which to setup the environment"
  type = "string"
}

variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
  type = "string"
  default = "fresca"
}

variable "instance_type" {
  description = "Instance type of the application server"
  type = "string"
  default = "t2.micro"
}

variable "ami_id" {
  description = "The AMI to use"
  type = "string"
  default = "ami-a8d2d7ce"
}

variable "root_volume_size" {
  description = "Size in gigabytes (GBs) of the root EBS volume"
  type = "string"
  default = "10"
}

variable "root_volume_type" {
  description = "Size in gigabytes (GBs) of the root EBS volume"
  type = "string"
  default = "gp2"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 1
}

variable "tags" {
  default = {
    created_by = "terraform"
  }
}
