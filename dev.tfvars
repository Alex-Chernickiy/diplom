region     = "us-east-1"
env        = "dev"
access_key = "AKIARNGVWZTHLWK6LO6M"
secret_key = "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"
dynamoDB            = "my-terraform-lockstate"
ecr                 = "my-dev-ecr"
eks_cluster_role    = "my-dev-cluster-role"
eks_cluster_name    = "my-dev-cluster"
eks_cluster_version = "1.27"
gw_name             = "my-dev-internet-gateway"
nat1_name           = "my-dev-nat-gateway1"
nat2_name           = "my-dev-nat-gateway2"
node_group_name     = "my-dev-node-group"
instance_type       = ["t2.micro"]
cidr_rt             = "0.0.0.0/0"
cidr_rt_name        = "my-dev-routing-table-public"
cidr_rtnat1         = "0.0.0.0/0"
cidr_rtnat1_name    = "my-dev-routing-table-nat1"
cidr_rtnat2         = "0.0.0.0/0"
cidr_rtnat2_name    = "my-dev-routing-table-nat2"
sg_name             = "my-dev-SG"
av_zone1            = "us-east-1a"
av_zone2            = "us-east-1b"
cidr_pub_subnet1    = "10.10.0.0/24"
cidr_pub_subnet2    = "10.10.64.0/24"
cidr_pri_subnet1    = "10.10.128.0/24"
cidr_pri_subnet2    = "10.10.192.0/24"
cidr_vpc            = "10.10.0.0/16"
