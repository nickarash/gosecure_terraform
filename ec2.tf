#Choosing the latest Ubuntu AMI

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

owners = ["099720109477"] # Canonical
}


# Creating Network Interfaces 

resource "aws_network_interface" "primary_nic_public" {
  
  subnet_id = aws_subnet.public_subnet.id
  tags = {
    Name = "primary_nic_public"
  }
}

resource "aws_network_interface" "secondry_nic_private" {
  
  subnet_id = aws_subnet.private_subnet.id
  tags = {
    Name = "secondry_nic_private"
  }
}


#Creating Instance

resource "aws_instance" "test_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.small"
    network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.primary_nic_public.id
  }
  network_interface {
    device_index = 1
    network_interface_id = aws_network_interface.secondry_nic_private.id
  }
  tags = {
    Name = "test_instance"
  }
}







