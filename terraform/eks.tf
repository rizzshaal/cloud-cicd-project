resource "aws_eks_cluster" "main" {
  name     = "cloud-cicd-cluster"
  role_arn = "arn:aws:iam::122066462721:role/EKSClusterRole"

  vpc_config {
    subnet_ids = [
      "subnet-026bb54c215f7ed4b",
      "subnet-05035786b34856438",
      "subnet-041f5e49cee98d02a"
    ]
  }
}