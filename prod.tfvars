aws_region = "eu-west-1"
resource_tags = {
    Project = "Karpenter"
    env = "dev"
}
vpc_cidr_block = "172.30.0.0/16"
private_subnet_cidr_blocks = ["172.30.10.0/24","172.30.11.0/24","172.30.12.0/24"]
public_subnet_cidr_blocks = ["172.30.0.0/24","172.30.1.0/24","172.30.2.0/24"]
vpc_name = "dev_vpc"
enable_flow_log = false
one_nat_gateway_per_az = false
single_nat_gateway = true
eks_cluster_name = "karpenter_demo_cluster"
eks_create = true
