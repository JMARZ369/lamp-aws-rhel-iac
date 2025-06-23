# terraform/outputs.tf
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

# terraform/outputs.tf

output "ec2_public_ip" {
  value = aws_instance.lamp_ec2.public_ip
}
