variable "aws_region" {}
variable "resource_tags" {
  description = "Additional tags for the resources"
  type        = map(string)
}
###################################################### VPC #################################33
variable "private_subnet_cidr_blocks" {}
variable "public_subnet_cidr_blocks" {}
# variable "eks_private_subnets_cidr_blocks" {}
# variable "eks_cluster_name" {}
# variable "eks_cluster_version" {}
variable "vpc_cidr_block" {}
variable "vpc_name" {}
variable "enable_flow_log" {}
variable "one_nat_gateway_per_az" {}
variable "single_nat_gateway" {}
####################################################### EKS ######################################
variable "eks_cluster_name" {}
variable "eks_create" {}
######################################################## ELK Instance #############################
# variable "elk_instance_name" {}
# variable "elk_instance_create" {}
# variable "elk_ami_id" {}
# variable"elk_instance_type" {}
# variable "elk_instance_key_pair" {}
# variable "elk_iam_role" {}
# variable "elk_alb_create" {}
######################################################## Bastion Host #############################
# variable "bastion_instance_name" {}
# variable "bastion_instance_create" {}
# variable "bastion_instance_type" {}
# variable "bastion_instance_key_pair"{}
# variable "bastion_instance_sg_create" {}

# variable "eks_endpoint_public_access" {}
# variable "eks_endpoint_private_access" {}
# variable "fargate_pod_execution_role" {}
# variable "database_name" {}
# variable "ec2_web_socket_create" {}
# variable "ec2_instance_type" {}
# variable "customergw_ip" {}