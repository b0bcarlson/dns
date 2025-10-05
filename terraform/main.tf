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
  com_123isme1_acme_challenge_value = "ywL1oAE2u5oSu_R0GbHfeTpk8P7EWiBa7PalvgnBzBg"
  es_bobcod_acme_challenge_value    = "q4KOnj4MGRgEZ-2Ip7z8RVPLgs86RRyjgsO9fH6q-q8"
  net_bobcodes_acme_challenge_value = "86Hkz75G95s1N9IyPBQw13RiD_LAh43E5VlC87zbyn8"
}
