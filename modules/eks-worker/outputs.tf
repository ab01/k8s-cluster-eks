output "cluster-name" {
  value = "${var.cluster-name}"
}

output "iam-role-arn" {
  value = "${aws_iam_role.environment-node.arn}"
}

output "env_security_group_id" {
  description = "The ID of the security group"
  value       = "${aws_security_group.environment-node.id}"
}
