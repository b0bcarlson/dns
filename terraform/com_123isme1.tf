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
