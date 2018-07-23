resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.cluster-name}-remote-state"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  tags {
    Name        = "${var.cluster-name}-remote-state"
    Environment = "${var.cluster-name}"
  }
}
