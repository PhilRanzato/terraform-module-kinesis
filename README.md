# terraform-module-kinesis

This Terraform module provisions a Kinesis Data Stream on AWS.

## Usage

```
terraform {
  backend "s3" {
    bucket = "bucket-name"
    key    = "bucket-file"
    region = "us-east-2"
  }
}

module "kinesis_stream" {
  source = "github.com/PhilRanzato/terraform-module-kinesis"

  region = "us-east-2"

  kinesis_stream = "my-kinesis-data-stream"
  kinesis_shard_count = 1
  kinesis_retention_period = 24
}
```

## Input Variables

```yaml
region: string # AWS region to use
access_key: string # AWS Access Key ID
secret_key: string # AWS Secret Access Key
kinesis_stream: string # AWS Kinesis Data Stream name
kinesis_shard_count: number # AWS Kinesis Data Stream shard count
kinesis_retention_period: number # AWS Kinesis Data Stream events retention period in hours (must be > 23) 
```

## Output Variables

```
output "stream-description" {
  value = "Provisioned stream ${aws_kinesis_stream.stream.name} with arn ${aws_kinesis_stream.stream.arn}"
}

output "stream-name" {
  value = "${aws_kinesis_stream.stream.name}"
}

output "stream-arn" {
  value = "${aws_kinesis_stream.stream.arn}"
}
```
