# Define an EC2 instance
provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07eef52105e8a2059"  # Use a valid AMI for your region
  instance_type = "t2.micro"
  key_name      = "destiny"                 # Replace with your AWS key pair

  tags = {
    Name = "GitHub-Terraform-EC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}
