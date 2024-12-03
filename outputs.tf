output "arn" {
  value = aws_instance.test-instance.arn
}

output "public_ip" {
  value = aws_instance.test-instance.public_ip
}

output "my_ec2_ip"{
      value=aws_instance.test-instance.public_ip
}