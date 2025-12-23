resource "aws_dynamodb_table" "customer_wallets" {
  name         = var.dynamodb_table_name
  billing_mode = var.dynamodb_billing_mode
  hash_key     = var.dynamodb_table_hash_key

  dynamic "attribute" {
    for_each = var.dynamodb_table_attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

}