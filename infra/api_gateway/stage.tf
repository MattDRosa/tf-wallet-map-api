resource "aws_api_gateway_stage" "wallet_map_api_stage" {
  stage_name    = var.api_stage_name
  rest_api_id   = aws_api_gateway_rest_api.wallet_map_api.id
  deployment_id = aws_api_gateway_deployment.wallet_map_api_deployment.id
}