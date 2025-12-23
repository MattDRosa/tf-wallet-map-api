resource "aws_dynamodb_table" "customer_portfolios" {
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

  global_secondary_index {
    name            = var.dynamodb_gsi_name
    hash_key        = var.dynamodb_gsi_hash_key
    projection_type = var.dynamodb_gsi_projection_type
  }
}