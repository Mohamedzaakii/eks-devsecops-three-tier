terraform {
  backend "s3" {
    bucket       = "eks-tf-bucket-mzaki"
    region       = "us-east-1"
    key          = "eks-devsecops-three-tier/Jenkins-Server-TF/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
  required_version = "~> 1.15"
  required_providers {
    aws = {
      version = "~> 5.49.0"
      source  = "hashicorp/aws"
    }
  }
}
