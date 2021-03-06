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
  cidr_block = "${var.cidr_block}"
  availability_zones = "${var.availability_zones}"
  public_subnet_cidr = "${var.public_cidr_block}"
  cluster-name = "${var.cluster-name}"

}

module "eks-cluster" {
  source = "../modules/eks-cluster"
  cluster-name = "${var.cluster-name}"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_ids = "${var.subnet_ids}"
  sg-env-node-id = "${module.eks-worker.env_security_group_id}"
}

module "eks-worker" {
  source = "../modules/eks-worker"
  cluster-name = "${var.cluster-name}"
  vpc_id = "${module.vpc.vpc_id}"
  sg-env-cluster-id = "${module.eks-cluster.env_security_group_id}"
  instance_type = "${var.instance_type}"
  key_name = "${key_name}"
  desired_capacity     = "${var.desired_capacity}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
}
