output "key_pair_id" {
  value = aws_key_pair.this[0].id
}

output "key_pair_name" {
  value = aws_key_pair.this[0].key_name
}

output "key_pair_arn" {
  value = aws_key_pair.this[0].arn
}

output "private_key_ssm_id" {
  value = var.create_key_pair && var.save_to_ssm ? aws_ssm_parameter.this[0].id : ""
}

output "file_name" {
  value = var.create_key_pair && var.save_to_file ? local_sensitive_file.this[0].filename : ""
}