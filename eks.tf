resource "aws_iam_role" "cluster_role" {
  name = var.eks_cluster_role

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "cluster_policies" {
  role       = aws_iam_role.cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_eks_cluster" "my-cluster" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.cluster_role.arn
  version  = var.eks_cluster_version

  vpc_config {
    endpoint_public_access = true
    subnet_ids = [
      aws_subnet.private-subnet1.id,
      aws_subnet.private-subnet2.id,
      aws_subnet.public-subnet1.id,
      aws_subnet.public-subnet2.id
    ]
  }
  depends_on = [
    aws_iam_role_policy_attachment.cluster_policies
  ]
}
