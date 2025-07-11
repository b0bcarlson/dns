terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.59.0"
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
  ipAddress                         = "192.95.125.83"
  ttl                               = 300
  com_123isme1_acme_challenge_value = "DzTtUtp862VgssgsAvaeK8g6WODec3G-jGQOVVpKADU"
  es_bobcod_acme_challenge_value    = "PUvjSxyuw--WP6zIGsawxolojBghfD0_1FS2aBHyX18"
  net_bobcodes_acme_challenge_value = "A9PhrCygK7Wk7jgxshwXQ0Qd9FMd38YgQAbFjk8R5M0"
}
