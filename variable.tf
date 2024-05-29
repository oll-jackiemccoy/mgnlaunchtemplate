variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}
variable "iam_role_name" {
  description = "The IAM role name to associate with the instance."
  default     = "AmazonSSMRoleForInstancesQuickSetup"  # Replace with your IAM role name
}
variable "security_group_id" {
  description = "SG"
}
variable "subnet_id" {
  description = "Subnet ID"
}
variable "instance_type" {
  description = "Instance Type"
}