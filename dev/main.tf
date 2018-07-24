#provider "aws" {
#  access_key = "${var.access_key}"
#  secret_key = "${var.secret_key}"
#  region     = "${var.region}"
#}

module "remote-state" {
  source = "../modules/remote-state"
  cluster-name = "${var.cluster-name}"
}

module "vpc" {
  source = "../modules/vpc"
  cidr_block = "${var.vpc_cidr}"
  cluster-name = "${var.cluster-name}"

}

module "eks-cluster" {
  source = "../modules/eks-cluster"
  cluster-name = "${var.cluster-name}"
  vpc_id = "${var.vpc_id}"
  subnet_id = "${var.subnet_ids}"
}

module "eks-worker" {
  source = "../modules/eks-worker"
  cluster-name = "${var.cluster-name}"
  vpc_id = "${var.vpc_id}"
  instance_type = "${var.instance_type}"
  key_name = "${key_name}"
  desired_capacity     = "${var.desired_capacity}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
}
