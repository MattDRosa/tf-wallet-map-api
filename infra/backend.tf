terraform {
  backend "s3" {
    bucket       = "matt-dev-tf"
    key          = "tf-wallet-map-api/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
    region       = "us-east-1"
  }
}