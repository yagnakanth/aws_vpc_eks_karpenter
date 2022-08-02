aws_region = "ap-south-1"
resource_tags = {
    Project = "Karpenter"
    env = "prod"
}
vpc_cidr_block = "10.0.0.0/16"
private_subnet_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24"]
public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_name = "aj_backend_vpc"
enable_flow_log = false
one_nat_gateway_per_az = true
single_nat_gateway = true
eks_cluster_name = "aj-b2c-backend-eks"
eks_create = true
ami_id = "ami-068257025f72f470d"




