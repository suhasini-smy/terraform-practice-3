module "dev-app" {
    source ="./aws_infra"
    my-env="dev-demo-main"
    instance_type="t2.micro"
    ami_id="ami-0866a3c8686eaeeba"
    instance_count=1
}

module "stg-app" {
    source ="./aws_infra"
    my-env="stg-demo-main"
    instance_type="t2.medium"
    ami_id="ami-0866a3c8686eaeeba"
    instance_count=2
}  

module "prd-app" {
    source ="./aws_infra"
    my-env="prd-demo-main"
    instance_type="t2.large"
    ami_id="ami-0866a3c8686eaeeba"
    instance_count=3
}