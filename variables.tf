variable "region" {
  type = string
  default = "us-east-2"
  description = "AWS region name"
}

variable "access_key" {
  type = string
  default = "xxxxx"
  description = "AWS Access Key ID"
}

variable "secret_key" {
  type = string
  default = "xxxxx"
  description = "AWS Secret Access Key"
}

variable "kinesis_stream" {
  type        = string
  description = "Name of the Kinesis Stream"
  default     = "test"
}

variable "kinesis_shard_count" {
  type        = number
  description = "Shard Count of the Kinesis Stream"
  default     = 1
}

variable "kinesis_retention_period" {
  type        = number
  description = "Retention period of the Kinesis Stream"
  default     = 24
}
