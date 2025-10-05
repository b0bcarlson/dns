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
  com_123isme1_acme_challenge_value = "fqX3M4bUR_w_5hITOX8r4udRur4NbgRx0c3gt04FuDQ"
  es_bobcod_acme_challenge_value    = "bP85FWR1Kn-1FqbymcvbgOoDGoNQ9JV8kQg4CsxTP1U"
  net_bobcodes_acme_challenge_value = "fLUaPvzSKUVYbX5OQ5puCU9D942tHZnYY6LzJuTOu0U"
}
