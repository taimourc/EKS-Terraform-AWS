terraform {
  backend "s3" {
    bucket         = "aws-eks-terraform-state-2"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
