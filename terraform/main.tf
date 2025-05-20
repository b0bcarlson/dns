terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.54.0"
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
  ipAddress                         = "173.31.189.178"
  ttl                               = 300
  com_123isme1_acme_challenge_value = "DzTtUtp862VgssgsAvaeK8g6WODec3G-jGQOVVpKADU"
  es_bobcod_acme_challenge_value    = ""
  net_bobcodes_acme_challenge_value = ""
}
