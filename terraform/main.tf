terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.67.0"
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
  ipAddress                         = "192.95.125.196"
  ttl                               = 300
  com_123isme1_acme_challenge_value = "ILHGMhgjCfFmtYNJMB6UsF_w7OExqYuXLqVkK7YnFWQ"
  es_bobcod_acme_challenge_value    = "x8Uzkj6UIyN4BhcK4OaZD2a-axXBjZL76rZy_oOMJQQ"
  net_bobcodes_acme_challenge_value = "okHsLhIeo8JffoXhPFn0P13Ezo0WNF6ObLOVt9DS5KM"
}
