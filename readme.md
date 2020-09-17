# GoSecure terraform exercise
This project creates a VPC, a public and private subnet, and an EC2 t2 small instance with two interfaces, one on each subnet.

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

