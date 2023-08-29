variable "access_key" {
  description = "Access key to AWS console"
}

variable "secret_key" {
  description = "Secret key to AWS console"
}

variable "env" {
  description = "Environment"
}

variable "region" {
  description = "Region"
}

variable "dynamoDB" {
  description = "DynamoDM table name"
}

variable "ecr" {
  description = "Name of ECR"
}

variable "eks_cluster_role" {
  description = "Name of EKS Cluster role"
}

variable "eks_cluster_name" {
  description = "Name of EKS Cluster"
}

variable "eks_cluster_version" {
  description = "Version of EKS Cluster"
}

variable "gw_name" {
  description = "Name of GW"
}

variable "nat1_name" {
  description = "Name of first NAT"
}

variable "nat2_name" {
  description = "Name of second NAT"
}

variable "node_group_name" {
  description = "Name of node group"
}

variable "instance_type" {
  type        = list(string)
  description = "Instance type"
}

variable "cidr_rt" {
  description = "CIDR block for routr table"
}

variable "cidr_rt_name" {
  description = "CIDR block name for routr table"
}

variable "cidr_rtnat1" {
  description = "CIDR block for routr table NAT1"
}

variable "cidr_rtnat1_name" {
  description = "CIDR block name for routr table NAT1"
}

variable "cidr_rtnat2" {
  description = "CIDR block for routr table NAT2"
}

variable "cidr_rtnat2_name" {
  description = "CIDR block name for routr table NAT1"
}

variable "sg_name" {
  description = "Security group name"
}

variable "av_zone1" {
  description = "Availability zone 1"
}

variable "av_zone2" {
  description = "Availability zone 2"
}

variable "cidr_pub_subnet1" {
  description = "CIDR block for public-subnet1"
}

variable "cidr_pri_subnet1" {
  description = "CIDR block for private-subnet1"
}

variable "cidr_pub_subnet2" {
  description = "CIDR block for public-subnet2"
}

variable "cidr_pri_subnet2" {
  description = "CIDR block for private-subnet2"
}

variable "cidr_vpc" {
  description = "CIDR block for VPC"
}
