terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "niranjan_infrastructure" {
  filename = "${path.module}/niranjan-infra.txt"

  content = <<-EOT
    Project 11 - Infrastructure Change
    Managed using Terraform.
    Branch: feature/niranjan-infra
  EOT
}
