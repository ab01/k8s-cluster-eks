output "endpoint" {
  value = "${aws_eks_cluster.environment.endpoint}"
}

output "ca-cert" {
  value = "${aws_eks_cluster.environment.certificate_authority.0.data}"
}

output "env_security_group_id" {
  description = "The ID of the security group"
  value       = "${aws_security_group.environment-cluster.id}"
}

