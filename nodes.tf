resource "aws_iam_role" "my_node_role" {
  name = "my-${var.env}-node-group-role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "EKSWorkerNodePolicy" {
  role       = aws_iam_role.my_node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "EKS_CNI_Policy" {
  role       = aws_iam_role.my_node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_role_policy_attachment" "EC2ContainerRegistry" {
  role       = aws_iam_role.my_node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_eks_node_group" "my_node_group" {
  cluster_name    = aws_eks_cluster.my-cluster.name
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.my_node_role.arn
  subnet_ids = [
    aws_subnet.private-subnet1.id,
    aws_subnet.private-subnet1.id
  ]
  scaling_config {
    desired_size = 2
    min_size     = 2
    max_size     = 2
  }
  instance_types = var.instance_type
  labels = {
    role = "my-${var.env}-nodes"
  }
  depends_on = [
    aws_iam_role_policy_attachment.EKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.EKS_CNI_Policy,
    aws_iam_role_policy_attachment.EC2ContainerRegistry
  ]
}
