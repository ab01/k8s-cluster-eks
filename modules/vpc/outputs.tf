output "vpc_id" {
  value = "${aws_vpc.environment.id}"
}

output "cidr_block" {
  value = "${aws_vpc.environment.cidr_block}"
}


output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}
