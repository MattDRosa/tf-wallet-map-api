module "database" {
  source = "./database"

  dynamodb_table_name       = var.dynamodb_table_name
  dynamodb_billing_mode     = var.dynamodb_billing_mode
  dynamodb_table_hash_key   = var.dynamodb_table_hash_key
  dynamodb_table_attributes = var.dynamodb_table_attributes
}