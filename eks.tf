# module "eks_blueprints" {
#   source = "./modules/eks-blueprints"

#   cluster_name = local.name

#   # EKS Cluster VPC and Subnets
#   vpc_id             = module.aws_vpc.vpc_id
#   private_subnet_ids = local.private_subnet_ids

#   # Cluster Security Group
#   cluster_security_group_additional_rules = var.cluster_security_group_additional_rules

#   # EKS CONTROL PLANE VARIABLES
#   cluster_version = var.cluster_version

#   cluster_endpoint_public_access  = false
#   cluster_endpoint_private_access = true

#   # EKS MANAGED NODE GROUPS
#   managed_node_groups = {
#     mg_5 = {
#       node_group_name = "managed-ondemand"
#       instance_types  = ["m5.large"]
#       subnet_ids      = local.private_subnet_ids
#     }
#   }

#   #Custom Tags.
#   tags = local.tags
# }



# locals {
#   name               = basename(path.cwd)
#   #vpc_id             = module.aws_vpc.vpc_id
#   tags = {
#     Blueprint  = local.name
#     GithubRepo = "github.com/aws-ia/terraform-aws-eks-blueprints"
#   }
#   private_subnet_ids = var.private_subnet_ids

# }