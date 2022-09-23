terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.2.0"
    }
  }
}

# provider "github" {
#   owner = "coremaker"
#   app_auth { 
#     id              = var.github_app_id
#     installation_id = var.github_app_installation_id
#     pem_file        = var.github_app_pem_file
#   }
# }