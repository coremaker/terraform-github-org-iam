terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.2.0"
    }
  }
}

# provider "github" {
#   app_auth {} # When using `GITHUB_APP_XXX` environment variables
# }

