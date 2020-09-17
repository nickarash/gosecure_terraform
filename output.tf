#VPC

output "vpc_cidr" {
  value = "${aws_vpc.gosecure.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.gosecure.id}"
}

output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.id}"
}

output "public_subnet_cidr" {
  value = "${aws_subnet.public_subnet.cidr_block}"
}

output "public_subnet_az" {
  value = "${aws_subnet.public_subnet.availability_zone}"
}

output "private_subnet_id" {
  value = "${aws_subnet.private_subnet.id}"
}

output "private_subnet_cidr" {
  value = "${aws_subnet.private_subnet.cidr_block}"
}

output "private_subnet_az" {
  value = "${aws_subnet.private_subnet.availability_zone}"
}


#ec2 instance

output "primary_nic_public_id" {
  value = "${aws_network_interface.primary_nic_public.id}"
}

output "secondry_nic_private_id" {
  value = "${aws_network_interface.secondry_nic_private.id}"
}

output "test_instance_id" {
  value = "${aws_instance.test_instance.id}"
}


