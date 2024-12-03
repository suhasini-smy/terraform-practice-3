#EC2  instance

resource "aws_instance" "testinstance7" {
  ami             = var.ami_id 
  instance_type   = var.instance_type #free tier
  tags = {
                Name = "${var.my-env}-terra-automate" #Name
        }
}
