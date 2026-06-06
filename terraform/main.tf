terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.87.0"
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
  com_123isme1_acme_challenge_value = "5uAxehDypxuRmh-FLU5fLJ6QYFRLSl_Sui1HiAgF9Gc"
  es_bobcod_acme_challenge_value    = "wqCVMjaVeesGm3UeyKtp9_CrBpnA4K37mC3R7NR4_aw"
  net_bobcodes_acme_challenge_value = "exzatFbPmGol5p_T61zdzWNGpfM9nX0L3KsEHk_d6_A"
}
