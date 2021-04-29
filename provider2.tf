provider "aws" {
region = "us-east-2"
}

# creating a vpc  
resource "aws_vpc" "main" {
cidr_block       = "10.0.0.0/16"
instance_tenancy = "default"

 tags = {
   Name = "main"
   Location = "Canada"
 }
}

# creating a subnet
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
