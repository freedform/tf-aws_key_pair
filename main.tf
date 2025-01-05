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
  count = var.create_key_pair && var.save_to_ssm ? 1 : 0
  name  = var.ssm_parameter_name
  type  = "SecureString"
  value = tls_private_key.this[0].private_key_pem
}

resource "local_sensitive_file" "this" {
  count    = var.create_key_pair && var.save_to_file ? 1 : 0
  filename = var.file_name
  content  = tls_private_key.this[0].private_key_pem
}
