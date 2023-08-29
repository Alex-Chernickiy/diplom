output "cluster_id" {
  description = "EKS cluster ID."
  value       = aws_eks_cluster.my-cluster.id
}

output "cluster_name" {
  description = "EKS cluster name."
  value       = aws_eks_cluster.my-cluster.name
}

output "ecr_name" {
  description = "ECR repository name."
  value       = aws_ecr_repository.ecr.name
}

output "ecr_id" {
  description = "ECR repository ID."
  value       = aws_ecr_repository.ecr.id
}

output "nat_eip1_public_ip1" {
  description = "Contains the public IP address"
  value       = aws_eip.nat_eip1.public_ip
}

# output "nat_eip2_private_ip1" {
#   description = "Contains the private IP address"
#   value       = aws_eip.nat_eip1.private_ip
# }

output "nat_eip1_public_ip2" {
  description = "Contains the public IP address"
  value       = aws_eip.nat_eip2.public_ip
}

# output "nat_eip2_private_ip2" {
#   description = "Contains the private IP address"
#   value       = aws_eip.nat_eip2.private_ip
# }

output "vpc_id" {
  description = "ID of the vpc"
  value       = aws_vpc.main.id
}

output "cluster_status" {
  description = "ID of the vpc"
  value       = aws_eks_cluster.my-cluster.status
}

output "eks_node_group_id" {
  description = "ID of the node group"
  value       = aws_eks_node_group.my_node_group.id
}

output "eks_node_group_status" {
  description = "Status of the node group"
  value       = aws_eks_node_group.my_node_group.status
}

output "eks_node_group_recources" {
  description = "Recources of the node group"
  value       = aws_eks_node_group.my_node_group.resources
}

output "eks_node_group_subnet_ids" {
  description = "Subnets IDs of the node group"
  value       = aws_eks_node_group.my_node_group.subnet_ids
}

