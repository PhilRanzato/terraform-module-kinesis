output "stream-description" {
  value = "Provisioned stream ${aws_kinesis_stream.stream.name} with arn ${aws_kinesis_stream.stream.arn}"
}

output "stream-name" {
  value = "${aws_kinesis_stream.stream.name}"
}

output "stream-arn" {
  value = "${aws_kinesis_stream.stream.arn}"
}
