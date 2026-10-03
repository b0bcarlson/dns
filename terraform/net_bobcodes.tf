resource "digitalocean_domain" "net_bobcodes" {
  name = "bobcodes.net"
}
resource "digitalocean_record" "net_bobcodes_a_root" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "A"
  name   = "@"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_a_wild" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "A"
  name   = "*"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_cname_protonmail_domainkey_0" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "CNAME"
  name   = "protonmail._domainkey"
  value  = "protonmail.domainkey.duv6zidl4bwmbtoqu5lu4kixnukvqny25ojixkuusziv5jvrtjgua.domains.proton.ch."
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_cname_protonmail_domainkey_1" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "CNAME"
  name   = "protonmail2._domainkey"
  value  = "protonmail2.domainkey.duv6zidl4bwmbtoqu5lu4kixnukvqny25ojixkuusziv5jvrtjgua.domains.proton.ch."
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_cname_protonmail_domainkey_2" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "CNAME"
  name   = "protonmail3._domainkey"
  value  = "protonmail3.domainkey.duv6zidl4bwmbtoqu5lu4kixnukvqny25ojixkuusziv5jvrtjgua.domains.proton.ch."
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_mx_10" {
  domain   = digitalocean_domain.net_bobcodes.id
  type     = "MX"
  name     = "@"
  priority = 10
  value    = "mail.protonmail.ch."
  ttl      = local.ttl
}
resource "digitalocean_record" "net_bobcodes_mx_20" {
  domain   = digitalocean_domain.net_bobcodes.id
  type     = "MX"
  name     = "@"
  priority = 20
  value    = "mailsec.protonmail.ch."
  ttl      = local.ttl
}
resource "digitalocean_record" "net_bobcodes_txt_atproto" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "TXT"
  name   = "_atproto"
  value  = "did=did:plc:ze3q64fbuj6st55fw3gukjy7"
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_txt_dmarc" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1; p=reject; aspf=r"
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_txt_mail_domainkey" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "TXT"
  name   = "mail._domainkey"
  value  = "v=DKIM1;h=sha256;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqHcp2w8tn1F2TcOmnVSEf7fgxZX42eiH+YgEhrVx4Q+VjgG817otFoMa1BBt9ZkLMESTNY1SF7PYROXO4gVEPw9KLuZ3JXtZBN18ce54nBUnENdF6dnfkJFT4ERNKZxp7Rx+rKW1wYFP8mjSw+zQ1ziJQDaTZ7hmdt78gsV+p3UtPQ0wZxSXnPV959ExtVjQg/H/TtLPX5OmnxKgidObc9FfNw2J0pH8ixLx7yY0bH2spRkBU9p8GxoPOwmhSRvdG9hT6w/pvuszDUcmlsW1EV6OsXxC6OV9mbhCh9tzQXCyt1suuAvIkXWx1bOmHOllXcMT91NsNybGiyzP2K3ziQIDAQAB"
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_txt_protonmail" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "TXT"
  name   = "@"
  value  = "protonmail-verification=f3f444a9c924a000963d3b4f2ee5c7f52b895cac"
  ttl    = local.ttl
}
resource "digitalocean_record" "net_bobcodes_txt_spf" {
  domain = digitalocean_domain.net_bobcodes.id
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 ip4:${local.ipAddress} include:_spf.protonmail.ch -all"
  ttl    = local.ttl
}
