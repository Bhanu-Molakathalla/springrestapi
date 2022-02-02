
# provider.tf

# Specify the provider and access details
provider "aws" {
  access_key = "AKIA3PLZP4JV65M65EUM"
  secret_key = "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"
  profile                 = "default"
  region                  = var.aws_region
}