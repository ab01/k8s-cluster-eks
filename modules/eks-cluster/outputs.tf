output "endpoint" {
  value = "${aws_eks_cluster.environment.endpoint}"
}

output "ca-cert" {
  value = "${aws_eks_cluster.environment.certificate_authority.0.data}"
}

output "iam-role-arn" {
  value = "${aws_iam_role.environment-node.arn}"
}
