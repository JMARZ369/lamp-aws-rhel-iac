# terraform/ec2.tf

resource "aws_instance" "lamp_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.lamp_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_pair_name

  tags = {
    Name = "lamp-server"
  }
}

# Fetch latest Amazon AMI ID from AWS Marketplace
data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["137112412989"] # Amazon official

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
