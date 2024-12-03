resource "aws_s3_bucket" "mytestbucket-21" {
    bucket = "${var.my-env}-test-my-app-bucket-b-2"
    tags = {
            Name = "${var.my-env}-test-my-app-bucket-b-2"
        }
}
