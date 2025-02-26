variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "rds_db_username" {
  description = "RDS username"
  type        = string
  sensitive   = true
}

variable "rds_db_password" {
  description = "RDS password"
  type        = string
  sensitive   = true
}

variable "account_id" {
  description = "AWS account id where it will be deployed"
  type        = string
  sensitive   = false
}
