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
  com_123isme1_acme_challenge_value = "mcojjQM0O1HXeYwxPMZW_8_YLmd3R0aZwAMO2Ppe95Q"
  es_bobcod_acme_challenge_value    = "TYwAktuc6rYFMVNKqxc7nANWF2Ah8CisfMsiWz9agZI"
  net_bobcodes_acme_challenge_value = "2sDlpplzvYkER_DHQMECqZT7pO_lkAusvIvd_TZdmyE"
}
