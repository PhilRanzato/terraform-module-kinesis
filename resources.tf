resource "aws_kinesis_stream" "stream" {
  name             = "${var.kinesis_stream}"
  shard_count      = "${var.kinesis_shard_count}"
  retention_period = "${var.kinesis_retention_period}"
}
