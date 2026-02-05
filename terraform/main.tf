terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.75.0"
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
  com_123isme1_acme_challenge_value = "FWzf4oKFlozh8RwkV205OY-O0PODzu9YjDPJ1VBzU7g"
  es_bobcod_acme_challenge_value    = "h3Gl-xhc3FBdOnkyR9MMmr1jLzLw3N7xCURZcIGQiSo"
  net_bobcodes_acme_challenge_value = "yxONCsPfWew0CeL4QHBOTD31ddD71eeesdgyr1iS_Jo"
}
