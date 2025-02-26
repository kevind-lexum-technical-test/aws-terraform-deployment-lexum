# aws-terraform-deployment-lexum

The use the ecosystem as template and store all specific value related to the aws account where the infrastructure will be deployed.

To deploy:
- use the version 0.0.1 needs to be used so it will deploy S3 bucket first to be able to store the tfstate
- upload the tfstate into s3 bucket and deploy with the latest version of this repo
- clone the repo [ansible-lexum-app](https://github.com/kevind-lexum-technical-test/ansible-lexum-app) and zip the content, and upload to the s3 resource bucket
- clone the repo [lexum](https://github.com/kevind-lexum-technical-test/lexum-app), build maven and push the image into ecr

The Deployment include the creation of these AWS:
VPC, EC2 ASG/ALB/TG, S3, KMS, SSM, RDS, CW logs, CW alert, IAM role/policies, ECR

Also pre-commit has been added, to use it please run:
pre-commit run -a
To have pre-commit run before pre-commit run:
pre-commit install

The pre-commit include:
- yaml check
- terraform fmt/validate/validate with tflint/validate with trivy
- detect secret

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.83 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lexum"></a> [lexum](#module\_lexum) | git@github.com:kevind-lexum-technical-test/aws-terraform-ecosystem-lexum.git | 0.0.4 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | AWS account id where it will be deployed | `string` | n/a | yes |
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | AWS Access Key | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | AWS Secret Key | `string` | n/a | yes |
| <a name="input_rds_db_password"></a> [rds\_db\_password](#input\_rds\_db\_password) | RDS password | `string` | n/a | yes |
| <a name="input_rds_db_username"></a> [rds\_db\_username](#input\_rds\_db\_username) | RDS username | `string` | n/a | yes |
| <a name="input_sns_alert_email"></a> [sns\_alert\_email](#input\_sns\_alert\_email) | Email address to receive CloudWatch alerts | `string` | `"kevin.diep94@gmail.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_repo_urls"></a> [ecr\_repo\_urls](#output\_ecr\_repo\_urls) | A map of ECR repository URLs |
| <a name="output_java_app_alb_dns_name"></a> [java\_app\_alb\_dns\_name](#output\_java\_app\_alb\_dns\_name) | The DNS name of the Application Load Balancer |
| <a name="output_java_app_alb_id"></a> [java\_app\_alb\_id](#output\_java\_app\_alb\_id) | The ID of the Application Load Balancer |
| <a name="output_java_app_asg_id"></a> [java\_app\_asg\_id](#output\_java\_app\_asg\_id) | The Auto Scaling Group ID |
| <a name="output_java_app_asg_security_group_id"></a> [java\_app\_asg\_security\_group\_id](#output\_java\_app\_asg\_security\_group\_id) | The security group ID associated with the Auto Scaling Group |
| <a name="output_java_app_autoscaling_service_linked_role_arn"></a> [java\_app\_autoscaling\_service\_linked\_role\_arn](#output\_java\_app\_autoscaling\_service\_linked\_role\_arn) | The ARN of the Autoscaling service linked role |
| <a name="output_java_app_ec2_iam_role_arn"></a> [java\_app\_ec2\_iam\_role\_arn](#output\_java\_app\_ec2\_iam\_role\_arn) | The Amazon Resource Name (ARN) specifying the IAM role |
| <a name="output_java_app_launch_template_id"></a> [java\_app\_launch\_template\_id](#output\_java\_app\_launch\_template\_id) | The Launch Template ID used by the Auto Scaling Group |
| <a name="output_lexum_ecr_kms_alias_arn"></a> [lexum\_ecr\_kms\_alias\_arn](#output\_lexum\_ecr\_kms\_alias\_arn) | Alias ARN |
| <a name="output_lexum_ecr_kms_alias_name"></a> [lexum\_ecr\_kms\_alias\_name](#output\_lexum\_ecr\_kms\_alias\_name) | Alias name |
| <a name="output_lexum_ecr_kms_key_arn"></a> [lexum\_ecr\_kms\_key\_arn](#output\_lexum\_ecr\_kms\_key\_arn) | Key ARN |
| <a name="output_lexum_ecr_kms_key_id"></a> [lexum\_ecr\_kms\_key\_id](#output\_lexum\_ecr\_kms\_key\_id) | Key ID |
| <a name="output_lexum_s3_bucket_arn"></a> [lexum\_s3\_bucket\_arn](#output\_lexum\_s3\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_lexum_s3_bucket_bucket_domain_name"></a> [lexum\_s3\_bucket\_bucket\_domain\_name](#output\_lexum\_s3\_bucket\_bucket\_domain\_name) | The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| <a name="output_lexum_s3_bucket_bucket_regional_domain_name"></a> [lexum\_s3\_bucket\_bucket\_regional\_domain\_name](#output\_lexum\_s3\_bucket\_bucket\_regional\_domain\_name) | The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL. |
| <a name="output_lexum_s3_bucket_id"></a> [lexum\_s3\_bucket\_id](#output\_lexum\_s3\_bucket\_id) | The name of the bucket. |
| <a name="output_lexum_s3_bucket_lifecycle_configuration_rules"></a> [lexum\_s3\_bucket\_lifecycle\_configuration\_rules](#output\_lexum\_s3\_bucket\_lifecycle\_configuration\_rules) | The lifecycle rules of the bucket, if the bucket is configured with lifecycle rules. If not, this will be an empty string. |
| <a name="output_lexum_s3_bucket_policy"></a> [lexum\_s3\_bucket\_policy](#output\_lexum\_s3\_bucket\_policy) | The policy of the bucket, if the bucket is configured with a policy. If not, this will be an empty string. |
| <a name="output_lexum_s3_bucket_region"></a> [lexum\_s3\_bucket\_region](#output\_lexum\_s3\_bucket\_region) | The AWS region this bucket resides in. |
| <a name="output_lexum_s3_kms_alias_arn"></a> [lexum\_s3\_kms\_alias\_arn](#output\_lexum\_s3\_kms\_alias\_arn) | Alias ARN |
| <a name="output_lexum_s3_kms_alias_name"></a> [lexum\_s3\_kms\_alias\_name](#output\_lexum\_s3\_kms\_alias\_name) | Alias name |
| <a name="output_lexum_s3_kms_key_arn"></a> [lexum\_s3\_kms\_key\_arn](#output\_lexum\_s3\_kms\_key\_arn) | Key ARN |
| <a name="output_lexum_s3_kms_key_id"></a> [lexum\_s3\_kms\_key\_id](#output\_lexum\_s3\_kms\_key\_id) | Key ID |
| <a name="output_rds_db_instance_port"></a> [rds\_db\_instance\_port](#output\_rds\_db\_instance\_port) | The port on which the RDS instance accepts connections. |
| <a name="output_rds_db_security_group_id"></a> [rds\_db\_security\_group\_id](#output\_rds\_db\_security\_group\_id) | The ID of the security group for the RDS instance. |
| <a name="output_rds_db_subnet_group_name"></a> [rds\_db\_subnet\_group\_name](#output\_rds\_db\_subnet\_group\_name) | The name of the DB subnet group. |
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | The endpoint address of the RDS instance. |
| <a name="output_rds_instance_arn"></a> [rds\_instance\_arn](#output\_rds\_instance\_arn) | The ARN of the RDS instance. |
| <a name="output_rds_instance_identifier"></a> [rds\_instance\_identifier](#output\_rds\_instance\_identifier) | The identifier of the RDS instance. |
| <a name="output_s3_resource_bucket_arn"></a> [s3\_resource\_bucket\_arn](#output\_s3\_resource\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_s3_resource_bucket_bucket_domain_name"></a> [s3\_resource\_bucket\_bucket\_domain\_name](#output\_s3\_resource\_bucket\_bucket\_domain\_name) | The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| <a name="output_s3_resource_bucket_bucket_regional_domain_name"></a> [s3\_resource\_bucket\_bucket\_regional\_domain\_name](#output\_s3\_resource\_bucket\_bucket\_regional\_domain\_name) | The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL. |
| <a name="output_s3_resource_bucket_id"></a> [s3\_resource\_bucket\_id](#output\_s3\_resource\_bucket\_id) | The name of the bucket. |
| <a name="output_s3_resource_bucket_lifecycle_configuration_rules"></a> [s3\_resource\_bucket\_lifecycle\_configuration\_rules](#output\_s3\_resource\_bucket\_lifecycle\_configuration\_rules) | The lifecycle rules of the bucket, if the bucket is configured with lifecycle rules. If not, this will be an empty string. |
| <a name="output_s3_resource_bucket_policy"></a> [s3\_resource\_bucket\_policy](#output\_s3\_resource\_bucket\_policy) | The policy of the bucket, if the bucket is configured with a policy. If not, this will be an empty string. |
| <a name="output_s3_resource_bucket_region"></a> [s3\_resource\_bucket\_region](#output\_s3\_resource\_bucket\_region) | The AWS region this bucket resides in. |
| <a name="output_s3_resource_kms_alias_arn"></a> [s3\_resource\_kms\_alias\_arn](#output\_s3\_resource\_kms\_alias\_arn) | Alias ARN |
| <a name="output_s3_resource_kms_alias_name"></a> [s3\_resource\_kms\_alias\_name](#output\_s3\_resource\_kms\_alias\_name) | Alias name |
| <a name="output_s3_resource_kms_key_arn"></a> [s3\_resource\_kms\_key\_arn](#output\_s3\_resource\_kms\_key\_arn) | Key ARN |
| <a name="output_s3_resource_kms_key_id"></a> [s3\_resource\_kms\_key\_id](#output\_s3\_resource\_kms\_key\_id) | Key ID |
| <a name="output_ssm_parameter_arns"></a> [ssm\_parameter\_arns](#output\_ssm\_parameter\_arns) | ARNs of all created SSM parameters |
| <a name="output_ssm_parameter_names"></a> [ssm\_parameter\_names](#output\_ssm\_parameter\_names) | Names of all created SSM parameters |
| <a name="output_ssm_parameter_versions"></a> [ssm\_parameter\_versions](#output\_ssm\_parameter\_versions) | Versions of all created SSM parameters |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The ARN of the VPC |
| <a name="output_vpc_block_public_access_exclusions"></a> [vpc\_block\_public\_access\_exclusions](#output\_vpc\_block\_public\_access\_exclusions) | A map of VPC block public access exclusions |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_default_network_acl_id"></a> [vpc\_default\_network\_acl\_id](#output\_vpc\_default\_network\_acl\_id) | The ID of the default network ACL |
| <a name="output_vpc_default_route_table_id"></a> [vpc\_default\_route\_table\_id](#output\_vpc\_default\_route\_table\_id) | The ID of the default route table |
| <a name="output_vpc_default_security_group_id"></a> [vpc\_default\_security\_group\_id](#output\_vpc\_default\_security\_group\_id) | The ID of the security group created by default on VPC creation |
| <a name="output_vpc_dhcp_options_id"></a> [vpc\_dhcp\_options\_id](#output\_vpc\_dhcp\_options\_id) | The ID of the DHCP options |
| <a name="output_vpc_egress_only_internet_gateway_id"></a> [vpc\_egress\_only\_internet\_gateway\_id](#output\_vpc\_egress\_only\_internet\_gateway\_id) | The ID of the egress only Internet Gateway |
| <a name="output_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#output\_vpc\_enable\_dns\_hostnames) | Whether or not the VPC has DNS hostname support |
| <a name="output_vpc_enable_dns_support"></a> [vpc\_enable\_dns\_support](#output\_vpc\_enable\_dns\_support) | Whether or not the VPC has DNS support |
| <a name="output_vpc_endpoints"></a> [vpc\_endpoints](#output\_vpc\_endpoints) | Array containing the full resource object and attributes for all endpoints created |
| <a name="output_vpc_endpoints_security_group_arn"></a> [vpc\_endpoints\_security\_group\_arn](#output\_vpc\_endpoints\_security\_group\_arn) | Amazon Resource Name (ARN) of the security group |
| <a name="output_vpc_endpoints_security_group_id"></a> [vpc\_endpoints\_security\_group\_id](#output\_vpc\_endpoints\_security\_group\_id) | ID of the security group |
| <a name="output_vpc_flow_log_cloudwatch_iam_role_arn"></a> [vpc\_flow\_log\_cloudwatch\_iam\_role\_arn](#output\_vpc\_flow\_log\_cloudwatch\_iam\_role\_arn) | The ARN of the IAM role used when pushing logs to Cloudwatch log group |
| <a name="output_vpc_flow_log_destination_arn"></a> [vpc\_flow\_log\_destination\_arn](#output\_vpc\_flow\_log\_destination\_arn) | The ARN of the destination for VPC Flow Logs |
| <a name="output_vpc_flow_log_destination_type"></a> [vpc\_flow\_log\_destination\_type](#output\_vpc\_flow\_log\_destination\_type) | The type of the destination for VPC Flow Logs |
| <a name="output_vpc_flow_log_id"></a> [vpc\_flow\_log\_id](#output\_vpc\_flow\_log\_id) | The ID of the Flow Log resource |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
| <a name="output_vpc_igw_arn"></a> [vpc\_igw\_arn](#output\_vpc\_igw\_arn) | The ARN of the Internet Gateway |
| <a name="output_vpc_igw_id"></a> [vpc\_igw\_id](#output\_vpc\_igw\_id) | The ID of the Internet Gateway |
| <a name="output_vpc_instance_tenancy"></a> [vpc\_instance\_tenancy](#output\_vpc\_instance\_tenancy) | Tenancy of instances spin up within VPC |
| <a name="output_vpc_ipv6_association_id"></a> [vpc\_ipv6\_association\_id](#output\_vpc\_ipv6\_association\_id) | The association ID for the IPv6 CIDR block |
| <a name="output_vpc_ipv6_cidr_block"></a> [vpc\_ipv6\_cidr\_block](#output\_vpc\_ipv6\_cidr\_block) | The IPv6 CIDR block |
| <a name="output_vpc_main_route_table_id"></a> [vpc\_main\_route\_table\_id](#output\_vpc\_main\_route\_table\_id) | The ID of the main route table associated with this VPC |
| <a name="output_vpc_nat_ids"></a> [vpc\_nat\_ids](#output\_vpc\_nat\_ids) | List of allocation ID of Elastic IPs created for AWS NAT Gateway |
| <a name="output_vpc_nat_public_ips"></a> [vpc\_nat\_public\_ips](#output\_vpc\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_vpc_natgw_ids"></a> [vpc\_natgw\_ids](#output\_vpc\_natgw\_ids) | List of NAT Gateway IDs |
| <a name="output_vpc_natgw_interface_ids"></a> [vpc\_natgw\_interface\_ids](#output\_vpc\_natgw\_interface\_ids) | List of Network Interface IDs assigned to NAT Gateways |
| <a name="output_vpc_owner_id"></a> [vpc\_owner\_id](#output\_vpc\_owner\_id) | The ID of the AWS account that owns the VPC |
| <a name="output_vpc_private_ipv6_egress_route_ids"></a> [vpc\_private\_ipv6\_egress\_route\_ids](#output\_vpc\_private\_ipv6\_egress\_route\_ids) | List of IDs of the ipv6 egress route |
| <a name="output_vpc_private_nat_gateway_route_ids"></a> [vpc\_private\_nat\_gateway\_route\_ids](#output\_vpc\_private\_nat\_gateway\_route\_ids) | List of IDs of the private nat gateway route |
| <a name="output_vpc_private_network_acl_arn"></a> [vpc\_private\_network\_acl\_arn](#output\_vpc\_private\_network\_acl\_arn) | ARN of the private network ACL |
| <a name="output_vpc_private_network_acl_id"></a> [vpc\_private\_network\_acl\_id](#output\_vpc\_private\_network\_acl\_id) | ID of the private network ACL |
| <a name="output_vpc_private_route_table_association_ids"></a> [vpc\_private\_route\_table\_association\_ids](#output\_vpc\_private\_route\_table\_association\_ids) | List of IDs of the private route table association |
| <a name="output_vpc_private_route_table_ids"></a> [vpc\_private\_route\_table\_ids](#output\_vpc\_private\_route\_table\_ids) | List of IDs of private route tables |
| <a name="output_vpc_private_subnet_arns"></a> [vpc\_private\_subnet\_arns](#output\_vpc\_private\_subnet\_arns) | List of ARNs of private subnets |
| <a name="output_vpc_private_subnet_objects"></a> [vpc\_private\_subnet\_objects](#output\_vpc\_private\_subnet\_objects) | A list of all private subnets, containing the full objects. |
| <a name="output_vpc_private_subnets"></a> [vpc\_private\_subnets](#output\_vpc\_private\_subnets) | List of IDs of private subnets |
| <a name="output_vpc_private_subnets_cidr_blocks"></a> [vpc\_private\_subnets\_cidr\_blocks](#output\_vpc\_private\_subnets\_cidr\_blocks) | List of cidr\_blocks of private subnets |
| <a name="output_vpc_private_subnets_ipv6_cidr_blocks"></a> [vpc\_private\_subnets\_ipv6\_cidr\_blocks](#output\_vpc\_private\_subnets\_ipv6\_cidr\_blocks) | List of IPv6 cidr\_blocks of private subnets in an IPv6 enabled VPC |
| <a name="output_vpc_public_internet_gateway_ipv6_route_id"></a> [vpc\_public\_internet\_gateway\_ipv6\_route\_id](#output\_vpc\_public\_internet\_gateway\_ipv6\_route\_id) | ID of the IPv6 internet gateway route |
| <a name="output_vpc_public_internet_gateway_route_id"></a> [vpc\_public\_internet\_gateway\_route\_id](#output\_vpc\_public\_internet\_gateway\_route\_id) | ID of the internet gateway route |
| <a name="output_vpc_public_network_acl_arn"></a> [vpc\_public\_network\_acl\_arn](#output\_vpc\_public\_network\_acl\_arn) | ARN of the public network ACL |
| <a name="output_vpc_public_network_acl_id"></a> [vpc\_public\_network\_acl\_id](#output\_vpc\_public\_network\_acl\_id) | ID of the public network ACL |
| <a name="output_vpc_public_route_table_association_ids"></a> [vpc\_public\_route\_table\_association\_ids](#output\_vpc\_public\_route\_table\_association\_ids) | List of IDs of the public route table association |
| <a name="output_vpc_public_route_table_ids"></a> [vpc\_public\_route\_table\_ids](#output\_vpc\_public\_route\_table\_ids) | List of IDs of public route tables |
| <a name="output_vpc_public_subnet_arns"></a> [vpc\_public\_subnet\_arns](#output\_vpc\_public\_subnet\_arns) | List of ARNs of public subnets |
| <a name="output_vpc_public_subnet_objects"></a> [vpc\_public\_subnet\_objects](#output\_vpc\_public\_subnet\_objects) | A list of all public subnets, containing the full objects. |
| <a name="output_vpc_public_subnets"></a> [vpc\_public\_subnets](#output\_vpc\_public\_subnets) | List of IDs of public subnets |
| <a name="output_vpc_public_subnets_cidr_blocks"></a> [vpc\_public\_subnets\_cidr\_blocks](#output\_vpc\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets |
| <a name="output_vpc_public_subnets_ipv6_cidr_blocks"></a> [vpc\_public\_subnets\_ipv6\_cidr\_blocks](#output\_vpc\_public\_subnets\_ipv6\_cidr\_blocks) | List of IPv6 cidr\_blocks of public subnets in an IPv6 enabled VPC |
| <a name="output_vpc_secondary_cidr_blocks"></a> [vpc\_secondary\_cidr\_blocks](#output\_vpc\_secondary\_cidr\_blocks) | List of secondary CIDR blocks of the VPC |
<!-- END_TF_DOCS -->
