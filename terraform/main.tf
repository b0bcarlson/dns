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
  com_123isme1_acme_challenge_value = "_V1ahAEXzl9J4Fe_lueOvrcd2AdU49WzxRg9U_lCgf8"
  es_bobcod_acme_challenge_value    = "lLR4PZmq8BWpRJvEzZESx4DfHtEkimMR1Vrr8gbTyfI"
  net_bobcodes_acme_challenge_value = "fLUaPvzSKUVYbX5OQ5puCU9D942tHZnYY6LzJuTOu0U"
}
