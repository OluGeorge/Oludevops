provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-02003f9f0fde924ea" # Replace with a valid Ubuntu AMI in your region
  instance_type = "t2.micro"
  key_name      = "blessed"                # Must exist in AWS
  tags = {
    Name = "MyTerraformEC2"
  }
}
