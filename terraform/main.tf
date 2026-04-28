terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.85.0"
    }
  }
}
provider "digitalocean" {}
terraform {
  backend "s3" {
    endpoints = {
      s3 = "https://s3.us-west-004.backblazeb2.com"
    }
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    region                      = "us-east-1"
    bucket                      = "bobcodes-dns"
    key                         = "terraform.tfstate"
    skip_s3_checksum            = true
  }
}
locals {
  ipAddress                         = "172.86.6.242"
  ttl                               = 300
  com_123isme1_acme_challenge_value = "L7C1aSCtecQTWm5canVEZlC3X-9vW0DAEyMFHYBvH2w"
  es_bobcod_acme_challenge_value    = "sZjIAJ0ORJLUfs-Vvgsl4A4XgaXTUQ-djlkvmTXf-fo"
  net_bobcodes_acme_challenge_value = "KmSRFeQEBDUGhYDasEBayTzBD8Jip5-ttyLp_J-55K4"
}
