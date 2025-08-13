resource "digitalocean_domain" "com_123isme1" {
  name = "123isme1.com"
}
resource "digitalocean_record" "com_123isme1_a_root" {
  domain = digitalocean_domain.com_123isme1.id
  type   = "A"
  name   = "@"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "com_123isme1_a_wild" {
  domain = digitalocean_domain.com_123isme1.id
  type   = "A"
  name   = "*"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "com_123isme1_mx_10" {
  domain   = digitalocean_domain.com_123isme1.id
  type     = "MX"
  name     = "@"
  priority = 10
  value    = "mxa.mailgun.org."
  ttl      = local.ttl
}
resource "digitalocean_record" "com_123isme1_mx_20" {
  domain   = digitalocean_domain.com_123isme1.id
  type     = "MX"
  name     = "@"
  priority = 20
  value    = "mxb.mailgun.org."
  ttl      = local.ttl
}
resource "digitalocean_record" "com_123isme1_txt_acme_challenge" {
  domain = digitalocean_domain.com_123isme1.id
  type   = "TXT"
  name   = "_acme-challenge"
  value  = local.com_123isme1_acme_challenge_value
  ttl    = local.ttl
}
resource "digitalocean_record" "com_123isme1_txt_mailo_domainkey" {
  domain = digitalocean_domain.com_123isme1.id
  type   = "TXT"
  name   = "mailo._domainkey"
  value  = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDTsUhzgHUcfM4km0cUwfw4ZyLQGkbFCT3EaItpenBYcTj0iII2zOhBj6qbXzcEYTf4t82e0rpV0dw1cbGARnHNCpC520y34yqQFL7F5df/U2I3OSET8rQLAKXmpfRU7EogI12mz/N/M6WezJtm6Rki1iwrgQ/CQvLFHPqs38r97QIDAQAB"
  ttl    = local.ttl
}
resource "digitalocean_record" "com_123isme1_txt_spf" {
  domain = digitalocean_domain.com_123isme1.id
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 include:mailgun.org ~all"
  ttl    = local.ttl
}
