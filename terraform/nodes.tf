resource "aws_eks_node_group" "main" {
  cluster_name    = aws_eks_cluster.main.name
  node_group_name = "cloud-cicd-nodes"
  node_role_arn   = "arn:aws:iam::122066462721:role/EKSNodeRole"
  subnet_ids = [
    "subnet-026bb54c215f7ed4b",
    "subnet-05035786b34856438",
    "subnet-041f5e49cee98d02a"
  ]

  capacity_type  = "ON_DEMAND"
  instance_types = ["t3.small"]

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }
}
