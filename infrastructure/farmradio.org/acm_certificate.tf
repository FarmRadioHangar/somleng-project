resource "aws_acm_certificate" "certificate" {
  domain_name       = "*.farmradio.org"
  validation_method = "EMAIL"
}
