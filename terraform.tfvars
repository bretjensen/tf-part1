# AWS
key_name           = "${KEY_NAME}"
private_key_path   = "${KEY_LOCATION}/${KEY_NAME}.pem"
bucket_name_prefix = "globo"
environment_tag    = "dev"
billing_code_tag   = "ACCT8675309"

# Azure
arm_subscription_id = "${ARM_SUBSCRIPTION_ID}"
arm_principal       = "${ARM_PRINCIPAL}"
arm_password        = "${ARM_PASSWORD}"
tenant_id           = "${TENANT_ID}"
dns_zone_name       = "brettomantics.xyz"
dns_resource_group  = "brett-test"

network_address_space = {
  Development = "10.0.0.0/16",
  UAT         = "10.1.0.0/16",
  Production  = "10.2.0.0/16"
}

instance_size = {
  Development = "t2.micro",
  UAT         = "t2.small",
  Production  = "t2.medium"
}

subnet_count = {
  Development = 2,
  UAT         = 2,
  Production  = 3
}

instance_count = {
  Development = 2,
  UAT         = 4,
  Production  = 6
}
