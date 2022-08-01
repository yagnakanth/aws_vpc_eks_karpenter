# Declare the data source, it will fetch the all availability zones in the specified region
data "aws_availability_zones" "available" {
  state = "available"
}
# resource "aws_eip" "nat" {
#   count = 1
#   vpc = true
# }

# VPC Module
module "vpc" {
  source                          = "./modules/vpc"
  create_vpc                      = true
  name                            = var.vpc_name
  cidr                            = var.vpc_cidr_block
  enable_ipv6                     = false
  azs                             = data.aws_availability_zones.available.names
  private_subnets                 = var.private_subnet_cidr_blocks
  public_subnets                  = var.public_subnet_cidr_blocks
  create_igw                      = true
  enable_nat_gateway              = true
  # reuse_nat_ips                   = true                    # <= Skip creation of EIPs for the NAT Gateways
  # external_nat_ip_ids             = "${aws_eip.nat.*.id}"   # <= IPs specified here as input to the module
  enable_dns_hostnames            = true
  enable_dns_support              = true
  #enable_vpn_gateway              = true
  single_nat_gateway              = true
  one_nat_gateway_per_az          = var.one_nat_gateway_per_az
  enable_flow_log                 = var.enable_flow_log
  flow_log_destination_type       = "s3"
  flow_log_destination_arn        = module.log_bucket.s3_bucket_arn
  flow_log_traffic_type           = "ALL"
  vpc_flow_log_tags               = { Name = "${var.vpc_name}_flow_log" }
  public_subnet_tags = {
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb"              = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"     = 1
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "owned"
    # Tags subnets for Karpenter auto-discovery
    "karpenter.sh/discovery" = var.eks_cluster_name
  }
  tags                            = var.resource_tags
}
