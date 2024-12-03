variable "my-env" {
    description="this is the environment for infra"
    type = string     
}

variable "ami_id" {
    description = "this is the AMI Id for ec2"
    type = string
}

variable "instance_type" {
    description ="this is the type for ec2"
    type=string
}

variable "instance_count" {
    description="this is count of instance"
    type=number
}