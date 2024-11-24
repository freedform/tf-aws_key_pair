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
  value = aws_ssm_parameter.this[0].id
}