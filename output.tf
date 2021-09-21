output "stream-arn" {
  value = "Provisioned stream ${aws_kinesis_stream.stream.name} with arn ${aws_kinesis_stream.stream.arn}"
}
