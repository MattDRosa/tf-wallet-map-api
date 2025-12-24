resource "aws_api_gateway_rest_api" "wallet_map_api" {
  name = var.api_name
  endpoint_configuration {
    types = ["${var.api_endpoint_type}"]
  }

  tags = {
    Name = var.api_name
  }
}

resource "aws_api_gateway_resource" "example" {
  rest_api_id = aws_api_gateway_rest_api.wallet_map_api.id
  parent_id   = aws_api_gateway_rest_api.wallet_map_api.root_resource_id
  path_part   = "example"
  
  lifecycle {
    ignore_changes = [ all ]
  }
}

resource "aws_api_gateway_method" "head_example" {
  rest_api_id   = aws_api_gateway_rest_api.wallet_map_api.id
  resource_id   = aws_api_gateway_resource.example.id
  http_method   = "HEAD"
  authorization = "NONE"
}