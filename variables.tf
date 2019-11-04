# VARIABLES
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "eu-west-2"
}
variable "network_address_space" {
  type = map(string)
}
variable "instance_size" {
  type = map(string)
}
variable "instance_count" {
  type = map(number)
}
variable "subnet_count" {
  type = map(number)
}
variable "billing_code_tag" {}
variable "environment_tag" {}
variable "bucket_name_prefix" {}

variable "arm_subscription_id" {}
variable "arm_principal" {}
variable "arm_password" {}
variable "tenant_id" {}
variable "dns_zone_name" {}
variable "dns_resource_group" {}

# LOCALS
locals {

  env_name = lower(terraform.workspace)

  common_tags = {
    BillingCode = var.billing_code_tag
    Environment = local.env_name
  }

  s3_bucket_name = "${var.bucket_name_prefix}-${local.env_name}-${random_integer.rand.result}"
}

