output "cluster_id" {
  description = "EKS cluster ID."
  value       = aws_eks_cluster.my-cluster.id
}

output "nat_eip1_public_ip1" {
  description = "Contains the public IP address"
  value       = aws_eip.nat_eip1.public_ip
}

output "nat_eip2_private_ip1" {
  description = "Contains the private IP address"
  value       = aws_eip.nat_eip1.private_ip
}

output "nat_eip1_public_ip2" {
  description = "Contains the public IP address"
  value       = aws_eip.nat_eip2.public_ip
}

output "nat_eip2_private_ip2" {
  description = "Contains the private IP address"
  value       = aws_eip.nat_eip2.private_ip
}

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

