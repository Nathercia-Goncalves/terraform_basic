###################### PROVIDER VARIABLES ######################
variable "region" {}
#variable "profile" {}

###################### EC2 VARIABLES ######################
variable "ami" {}
variable "availability_zone"{}
variable "bastion_name" {}
variable "bastion_instance_type" {}
variable "key_name" {}
variable "vpc_security_group" {}
variable "ec2_subnet_id" {}

###################### TAG VARIABLES ######################
variable "createdBy" {}
variable "maintainedBy"{}
