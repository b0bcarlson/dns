resource "digitalocean_domain" "es_bobcod" {
  name = "bobcod.es"
}
resource "digitalocean_record" "es_bobcod_a_root" {
  domain = digitalocean_domain.es_bobcod.id
  type   = "A"
  name   = "@"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "es_bobcod_a_wild" {
  domain = digitalocean_domain.es_bobcod.id
  type   = "A"
  name   = "*"
  value  = local.ipAddress
  ttl    = local.ttl
}
resource "digitalocean_record" "es_bobcod_txt_acme_challenge" {
  domain = digitalocean_domain.es_bobcod.id
  type   = "TXT"
  name   = "_acme-challenge"
  value  = "7rikilUWsv-5z6XS4x0nvDb5GBB_AJyHtkHVnaA58So"
  ttl    = local.ttl
}