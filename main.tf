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

    Infrastructure managed using Terraform.

    Branch: feature/niranjan-infra
    Owner: Niranjan

    This change was implemented using the feature branch
    and submitted through a GitHub Pull Request.
  EOT
}
