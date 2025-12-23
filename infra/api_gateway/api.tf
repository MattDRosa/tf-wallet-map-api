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
          summary     = "HEAD example"
          description = "HEAD method with JSON body"
          responses = {
            "200" = {
              description = "Success"
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

