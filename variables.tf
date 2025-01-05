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

variable "save_to_ssm" {
  description = "Save private key value to SSM parameter"
  type        = bool
  default     = false
}

variable "ssm_parameter_name" {
  description = "SSM parameter name for private key. Mandatory if save_to_ssm is true"
  type        = string
  default     = ""
}

variable "save_to_file" {
  description = "Save private key value to local file"
  type        = bool
  default     = false
}

variable "file_name" {
  description = "Local file name for private key. Mandatory if save_to_file is true"
  type        = string
  default     = ""
}
