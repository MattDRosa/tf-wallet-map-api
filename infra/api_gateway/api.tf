resource "aws_api_gateway_rest_api" "wallet_map_api" {
  name = var.api_name

  endpoint_configuration {
    types = ["${var.api_endpoint_type}"]
  }
}

