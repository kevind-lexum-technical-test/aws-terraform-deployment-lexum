################################################################################
# VPC
################################################################################
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.lexum.vpc_id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.lexum.vpc_arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.lexum.vpc_cidr_block
}

output "vpc_default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = module.lexum.vpc_default_security_group_id
}

output "vpc_default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = module.lexum.vpc_default_network_acl_id
}

output "vpc_default_route_table_id" {
  description = "The ID of the default route table"
  value       = module.lexum.vpc_default_route_table_id
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = module.lexum.vpc_instance_tenancy
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = module.lexum.vpc_enable_dns_support
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = module.lexum.vpc_enable_dns_hostnames
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = module.lexum.vpc_main_route_table_id
}

output "vpc_ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block"
  value       = module.lexum.vpc_ipv6_association_id
}

output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block"
  value       = module.lexum.vpc_ipv6_cidr_block
}

output "vpc_secondary_cidr_blocks" {
  description = "List of secondary CIDR blocks of the VPC"
  value       = module.lexum.vpc_secondary_cidr_blocks
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = module.lexum.vpc_owner_id
}

output "vpc_block_public_access_exclusions" {
  description = "A map of VPC block public access exclusions"
  value       = module.lexum.vpc_block_public_access_exclusions
}

# DHCP Options Set
output "vpc_dhcp_options_id" {
  description = "The ID of the DHCP options"
  value       = module.lexum.vpc_dhcp_options_id
}

# Internet Gateway
output "vpc_igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.lexum.vpc_igw_id
}

output "vpc_igw_arn" {
  description = "The ARN of the Internet Gateway"
  value       = module.lexum.vpc_igw_arn
}

# Publiс Subnets
output "vpc_public_subnet_objects" {
  description = "A list of all public subnets, containing the full objects."
  value       = module.lexum.vpc_public_subnet_objects
}

output "vpc_public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.lexum.vpc_public_subnets
}

output "vpc_public_subnet_arns" {
  description = "List of ARNs of public subnets"
  value       = module.lexum.vpc_public_subnet_arns
}

output "vpc_public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = module.lexum.vpc_public_subnets_cidr_blocks
}

output "vpc_public_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of public subnets in an IPv6 enabled VPC"
  value       = module.lexum.vpc_public_subnets_ipv6_cidr_blocks
}

output "vpc_public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.lexum.vpc_public_route_table_ids
}

output "vpc_public_internet_gateway_route_id" {
  description = "ID of the internet gateway route"
  value       = module.lexum.vpc_public_internet_gateway_route_id
}

output "vpc_public_internet_gateway_ipv6_route_id" {
  description = "ID of the IPv6 internet gateway route"
  value       = module.lexum.vpc_public_internet_gateway_ipv6_route_id
}

output "vpc_public_route_table_association_ids" {
  description = "List of IDs of the public route table association"
  value       = module.lexum.vpc_public_route_table_association_ids
}

output "vpc_public_network_acl_id" {
  description = "ID of the public network ACL"
  value       = module.lexum.vpc_public_network_acl_id
}

output "vpc_public_network_acl_arn" {
  description = "ARN of the public network ACL"
  value       = module.lexum.vpc_public_network_acl_arn
}

# Private Subnets
output "vpc_private_subnet_objects" {
  description = "A list of all private subnets, containing the full objects."
  value       = module.lexum.vpc_private_subnet_objects
}

output "vpc_private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.lexum.vpc_private_subnets
}

output "vpc_private_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.lexum.vpc_private_subnet_arns
}

output "vpc_private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = module.lexum.vpc_private_subnets_cidr_blocks
}

output "vpc_private_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of private subnets in an IPv6 enabled VPC"
  value       = module.lexum.vpc_private_subnets_ipv6_cidr_blocks
}

output "vpc_private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.lexum.vpc_private_route_table_ids
}

output "vpc_private_nat_gateway_route_ids" {
  description = "List of IDs of the private nat gateway route"
  value       = module.lexum.vpc_private_nat_gateway_route_ids
}

output "vpc_private_ipv6_egress_route_ids" {
  description = "List of IDs of the ipv6 egress route"
  value       = module.lexum.vpc_private_ipv6_egress_route_ids
}

output "vpc_private_route_table_association_ids" {
  description = "List of IDs of the private route table association"
  value       = module.lexum.vpc_private_route_table_association_ids
}

output "vpc_private_network_acl_id" {
  description = "ID of the private network ACL"
  value       = module.lexum.vpc_private_network_acl_id
}

output "vpc_private_network_acl_arn" {
  description = "ARN of the private network ACL"
  value       = module.lexum.vpc_private_network_acl_arn
}

# NAT Gateway
output "vpc_nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = module.lexum.vpc_nat_ids
}

output "vpc_nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.lexum.vpc_nat_public_ips
}

output "vpc_natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = module.lexum.vpc_natgw_ids
}

output "vpc_natgw_interface_ids" {
  description = "List of Network Interface IDs assigned to NAT Gateways"
  value       = module.lexum.vpc_natgw_interface_ids
}

# Egress Only Gateway
output "vpc_egress_only_internet_gateway_id" {
  description = "The ID of the egress only Internet Gateway"
  value       = module.lexum.vpc_egress_only_internet_gateway_id
}

# VPC Flow Log
output "vpc_flow_log_id" {
  description = "The ID of the Flow Log resource"
  value       = module.lexum.vpc_flow_log_id
}

output "vpc_flow_log_destination_arn" {
  description = "The ARN of the destination for VPC Flow Logs"
  value       = module.lexum.vpc_flow_log_destination_arn
}

output "vpc_flow_log_destination_type" {
  description = "The type of the destination for VPC Flow Logs"
  value       = module.lexum.vpc_flow_log_destination_type
}

output "vpc_flow_log_cloudwatch_iam_role_arn" {
  description = "The ARN of the IAM role used when pushing logs to Cloudwatch log group"
  value       = module.lexum.vpc_flow_log_cloudwatch_iam_role_arn
}

# VPC endpoints
output "vpc_endpoints" {
  description = "Array containing the full resource object and attributes for all endpoints created"
  value       = module.lexum.vpc_endpoints
}

output "vpc_endpoints_security_group_arn" {
  description = "Amazon Resource Name (ARN) of the security group"
  value       = module.lexum.vpc_endpoints_security_group_arn
}

output "vpc_endpoints_security_group_id" {
  description = "ID of the security group"
  value       = module.lexum.vpc_endpoints_security_group_id
}

################################################################################
# RDS
################################################################################

output "rds_instance_identifier" {
  description = "The identifier of the RDS instance."
  value       = module.lexum.rds_instance_identifier
}

output "rds_endpoint" {
  description = "The endpoint address of the RDS instance."
  value       = module.lexum.rds_endpoint
}

output "rds_db_instance_port" {
  description = "The port on which the RDS instance accepts connections."
  value       = module.lexum.rds_db_instance_port
}

output "rds_instance_arn" {
  description = "The ARN of the RDS instance."
  value       = module.lexum.rds_instance_arn
}

output "rds_db_subnet_group_name" {
  description = "The name of the DB subnet group."
  value       = module.lexum.rds_db_subnet_group_name
}

output "rds_db_security_group_id" {
  description = "The ID of the security group for the RDS instance."
  value       = module.lexum.rds_db_security_group_id
}

################################################################################
# Java app
################################################################################

output "java_app_asg_id" {
  description = "The Auto Scaling Group ID"
  value       = module.lexum.java_app_asg_id
}

output "java_app_launch_template_id" {
  description = "The Launch Template ID used by the Auto Scaling Group"
  value       = module.lexum.java_app_launch_template_id
}

output "java_app_ec2_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.lexum.java_app_ec2_iam_role_arn
}

output "java_app_asg_security_group_id" {
  description = "The security group ID associated with the Auto Scaling Group"
  value       = module.lexum.java_app_asg_security_group_id
}

output "java_app_alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = module.lexum.java_app_alb_dns_name
}

output "java_app_alb_id" {
  description = "The ID of the Application Load Balancer"
  value       = module.lexum.java_app_alb_id
}

output "java_app_autoscaling_service_linked_role_arn" {
  description = "The ARN of the Autoscaling service linked role"
  value       = module.lexum.java_app_autoscaling_service_linked_role_arn
}

################################################################################
# Tfstate S3
################################################################################

output "lexum_s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.lexum.s3_tfstate_bucket_id
}

output "lexum_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.lexum.s3_tfstate_bucket_arn
}

output "lexum_s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = module.lexum.s3_tfstate_bucket_bucket_domain_name
}

output "lexum_s3_bucket_bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = module.lexum.s3_tfstate_bucket_bucket_regional_domain_name
}

output "lexum_s3_bucket_lifecycle_configuration_rules" {
  description = "The lifecycle rules of the bucket, if the bucket is configured with lifecycle rules. If not, this will be an empty string."
  value       = module.lexum.s3_tfstate_bucket_lifecycle_configuration_rules
}

output "lexum_s3_bucket_policy" {
  description = "The policy of the bucket, if the bucket is configured with a policy. If not, this will be an empty string."
  value       = module.lexum.s3_tfstate_bucket_policy
}

output "lexum_s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = module.lexum.s3_tfstate_bucket_region
}

# KMS outputs
output "lexum_s3_kms_key_arn" {
  description = "Key ARN"
  value       = module.lexum.s3_tfstate_kms_key_arn
}

output "lexum_s3_kms_key_id" {
  description = "Key ID"
  value       = module.lexum.s3_tfstate_kms_key_id
}

output "lexum_s3_kms_alias_arn" {
  description = "Alias ARN"
  value       = module.lexum.s3_tfstate_kms_alias_arn
}

output "lexum_s3_kms_alias_name" {
  description = "Alias name"
  value       = module.lexum.s3_tfstate_kms_alias_name
}

################################################################################
# Resources S3
################################################################################

output "s3_resource_bucket_id" {
  description = "The name of the bucket."
  value       = module.lexum.s3_resource_bucket_id
}

output "s3_resource_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.lexum.s3_resource_bucket_arn
}

output "s3_resource_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = module.lexum.s3_resource_bucket_bucket_domain_name
}

output "s3_resource_bucket_bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = module.lexum.s3_resource_bucket_bucket_regional_domain_name
}

output "s3_resource_bucket_lifecycle_configuration_rules" {
  description = "The lifecycle rules of the bucket, if the bucket is configured with lifecycle rules. If not, this will be an empty string."
  value       = module.lexum.s3_resource_bucket_lifecycle_configuration_rules
}

output "s3_resource_bucket_policy" {
  description = "The policy of the bucket, if the bucket is configured with a policy. If not, this will be an empty string."
  value       = module.lexum.s3_resource_bucket_policy
}

output "s3_resource_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = module.lexum.s3_resource_bucket_region
}

# KMS
output "s3_resource_kms_key_arn" {
  description = "Key ARN"
  value       = module.lexum.s3_resource_kms_key_arn
}

output "s3_resource_kms_key_id" {
  description = "Key ID"
  value       = module.lexum.s3_resource_kms_key_id
}

output "s3_resource_kms_alias_arn" {
  description = "Alias ARN"
  value       = module.lexum.s3_resource_kms_alias_arn
}

output "s3_resource_kms_alias_name" {
  description = "Alias name"
  value       = module.lexum.s3_resource_kms_alias_name
}

################################################################################
# ECR
################################################################################

output "lexum_ecr_kms_key_arn" {
  value       = module.lexum.ecr_kms_key_arn
  description = "Key ARN"
}

output "lexum_ecr_kms_key_id" {
  value       = module.lexum.ecr_kms_key_id
  description = "Key ID"
}

output "lexum_ecr_kms_alias_arn" {
  value       = module.lexum.ecr_kms_alias_arn
  description = "Alias ARN"
}

output "lexum_ecr_kms_alias_name" {
  value       = module.lexum.ecr_kms_alias_name
  description = "Alias name"
}

output "ecr_repo_urls" {
  description = "A map of ECR repository URLs"
  value       = module.lexum.ecr_repo_urls
}

################################################################################
# SSM
################################################################################


# Output all parameter names
output "ssm_parameter_names" {
  description = "Names of all created SSM parameters"
  value       = module.lexum.ssm_parameter_names
}

# Output all parameter ARNs
output "ssm_parameter_arns" {
  description = "ARNs of all created SSM parameters"
  value       = module.lexum.ssm_parameter_arns
}

# Output all parameter versions
output "ssm_parameter_versions" {
  description = "Versions of all created SSM parameters"
  value       = module.lexum.ssm_parameter_versions
}
