output "cluster-name" {
  value = "${var.cluster-name}"
}

output "iam-role-arn" {
  value = "${aws_iam_role.environment-node.arn}"
}
