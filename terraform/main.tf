terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.99.0"
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
  com_123isme1_acme_challenge_value = "9rmDP2jMr0Mm5lq0EgwvbiulIVTPTvC2_2WfTP1BP0c"
  es_bobcod_acme_challenge_value    = "aCB8K-252KXYH8qVlC12E7DrXBweyU5A8tAcbAe-Zjs"
  net_bobcodes_acme_challenge_value = "h39do1AA-FbJwjkGBF6ZckDFwJLoR8uAcusqLtcWVvo"
}
