resource "tls_private_key" "this" {
  count     = var.create_key_pair ? 1 : 0
  algorithm = "RSA"
  rsa_bits  = var.rsa_bits
}

resource "aws_key_pair" "this" {
  count      = var.create_key_pair ? 1 : 0
  key_name   = var.key_name
  public_key = tls_private_key.this[0].public_key_openssh
}

resource "aws_ssm_parameter" "this" {
  count = var.create_key_pair ? 1 : 0
  name  = var.key_name
  type  = "SecureString"
  value = tls_private_key.this[0].private_key_pem
}