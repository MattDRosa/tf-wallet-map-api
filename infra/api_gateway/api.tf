resource "aws_api_gateway_rest_api" "wallet_map_api" {
  name = var.api_name

  body = jsonencode({
    openapi = "3.0.0"
    info = {
      title   = "Example API"
      version = "1.0"
    }
    paths = {
      "/example" = {
        head = {
          x-amazon-apigateway-integration = {
            type                 = "mock"
            httpMethod           = "HEAD"
            passthroughBehavior = "when_no_match"
            responses = {
              default = {
                statusCode = "200"
                responseParameters = {
                  "method.response.header.Content-Type" = "'application/json'"
                }
              }
            }
          }
        }
      }
    }
  })

  endpoint_configuration {
    types = ["${var.api_endpoint_type}"]
  }

  # lifecycle {
  #   ignore_changes = [ body ]
  # }

  tags = {
    Name = var.api_name
  }
}

