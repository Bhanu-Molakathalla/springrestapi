
# provider.tf

# Specify the provider and access details
provider "aws" {
  profile                 = "default"
  region                  = var.aws_region
}

terraform{
    backend "s3" {
        bucket = "myspringaws-artifact-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}