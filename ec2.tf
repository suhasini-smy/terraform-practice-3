resource "aws_key_pair" "deployer-2" {
  key_name   = "terra"
  public_key = file("terra.pub")
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "allow_user_to_connect" {
  name        = "allow TLS"
  description = "Allow user to connect"
  vpc_id      = aws_default_vpc.default.id
  ingress {
    description = "port 22 allow"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = " allow all outgoing traffic "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port 80 allow"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port 443 allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mysecurity"
  }
}

resource "aws_instance" "test-instance" {
  ami             = var.ami_id #ubuntu
  instance_type   = var.instance_type #free tier
  key_name        = aws_key_pair.deployer-2.key_name #key
  security_groups = [aws_security_group.allow_user_to_connect.name] #SG
  tags = {
    Name = "Terra-Automate-7" #Name
  }
  root_block_device {
    volume_size = 10 
    volume_type = "gp3"
  }
}
