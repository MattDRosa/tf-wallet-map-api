variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

### API GATEWAY VARIABLES ###

variable "api_name" {
  description = "API Gateway name"
  type        = string
}

variable "api_protocol_type" {
  description = "API Gateway type"
  type        = string
}

### DYNAMODB VARIABLES ###

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "dynamodb_billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "dynamodb_table_attributes" {
  description = "Table attributes"
  type = list(
    object(
      {
        name = string
        type = string
      }
    )
  )
}

variable "dynamodb_table_hash_key" {
  description = "The hash key for the DynamoDB table"
  type        = string
}