#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "environment" {
  cidr_block = "${var.cidr_block}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support   = "${var.enable_dns_support}"

  tags = "${
    map(
     "Name", "terraform-eks-environment-node",
     "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_subnet" "environment" {
  count = 2

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block        = "10.0.${count.index}.0/24"
  vpc_id            = "${aws_vpc.environment.id}"

  tags = "${
    map(
     "Name", "terraform-eks-environment-node",
     "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_internet_gateway" "environment" {
  vpc_id = "${aws_vpc.environment.id}"

  tags {
    Name = "terraform-eks-environment"
  }
}

resource "aws_route_table" "environment" {
  vpc_id = "${aws_vpc.environment.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.environment.id}"
  }
}

resource "aws_route_table_association" "environment" {
  count = 2

  subnet_id      = "${aws_subnet.environment.*.id[count.index]}"
  route_table_id = "${aws_route_table.environment.id}"
}
