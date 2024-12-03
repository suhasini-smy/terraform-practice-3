output "arn" {
  value = aws_instance.testinstance7.arn
}

output "public_ip" {
  value = aws_instance.testinstance7.public_ip
}

output "my_ec2_ip"{
      value=aws_instance.testinstance7.public_ip
}