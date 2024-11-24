variable "create_key_pair" {
  description = "Controls key pair creation"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "Name of key pair"
  type        = string
}

variable "rsa_bits" {
  description = "RSA bits"
  type        = number
  default     = 4096
}