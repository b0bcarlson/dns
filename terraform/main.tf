terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.70.0"
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
  com_123isme1_acme_challenge_value = "CHuo1r9wi_R53EKoj52iWIbBGwXdI6x-rx6zcDwO0gs"
  es_bobcod_acme_challenge_value    = "QVeCtJRoU_ipm-AWbuqJ-GQPbhlRZdWt8piL0Mtk10g"
  net_bobcodes_acme_challenge_value = "KVelE3Fhs5iKx9LUsb_U9rESpXGnC4nqoIa_GQ3qku8"
}
