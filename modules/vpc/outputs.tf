output "vpc_id" {
  value = "${aws_vpc.environment.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.environment.cidr_block}"
}


output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}
