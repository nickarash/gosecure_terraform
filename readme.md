# GoSecure terraform exercise

This project is capable of spinning up the VPC for the GoSecure project in test environment. As part of launching the VPC, we create 2 tiers of subnets across 1 Availability Zone.

## Dependencies
- Terraform 0.13+
- AWS Credentials on your machine (AWS Configure)

### Initialize Terraform 
`terraform init`

### Terraform Plan
`terraform plan -var-file="./test-env/variables.tfvars"`

### Terraform Apply
`terraform apply -var-file="./test-env/variables.tfvars"`

## Outputs
- `vpc_cidr` (string)
- `vpc_id` (string)
- `public_subnet_id` (string[])
- `public_subnet_cidr` (string[])
- `public_subnet_az` (string[])
- `private_subnet_id` (string[])
- `private_subnet_cidr` (string[])
- `private_subnet_az` (string[])
- `primary_nic_public_id` (string[])
- `secondry_nic_private_id` (string[])
- `test_instance_id` (string[])

### Terraform Destroy
`terraform destroy -var-file="./test-env/variables.tfvars"`

