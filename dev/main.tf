provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

module "remote-state" {
  source = "../modules/remote-state"
  cluster-name = "${var.cluster-name}"
}

module "vpc" {
  source = "../modules/vpc"
  vpc_cidr = "${var.vpc_cidr}"
}

module "eks-cluster" {
  source = "../modules/eks-cluster"
  cluster-name = "${var.cluster-name}"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_ids = ["${module.vpc.public_subnet_ids.*.id}"]
}

module "eks-worker" {
  source = "../modules/eks-worker"
  cluster-name = "${var.cluster-name}"
  instance_type = "${var.instance_type}"
  key_name = "${key_name}"
  desired_capacity     = "${var.desired_capacity}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
}
