resource "aws_dynamodb_table" "my_app_table" {
    name = "${var.my-env}-test-my-app-bucket-b-2"    
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
        name = "id"
        type = "S"
    }
}
