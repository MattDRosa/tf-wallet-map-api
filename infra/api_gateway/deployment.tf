resource "aws_api_gateway_deployment" "wallet_map_api_deployment" {
  rest_api_id = aws_api_gateway_rest_api.wallet_map_api.id

  depends_on = [
    aws_api_gateway_rest_api.wallet_map_api,
    aws_api_gateway_method.head_example
  ]
}