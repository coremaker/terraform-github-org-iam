# terraform-github-org-iam

This is the Terraform Github Module used to add users to the organization as members and admins, create teams and add users to their respective team.


# Resources

| Name | Type |
|------|------|
| [github_membership](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_members](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_members) | resource |

# Usage Example

```terraform
module "github-iam" {
source = "github.com/coremaker/terraform-github-org-iam.git?ref=DOP-49-terraform-github-org-iam-Module"
  
  # Users to be added in the organization
  user_list = {
     "user1" = "admin"
     "user2" = "member"
  }

  # Teams to be added in the org, along with user distribution per team
  add_teams = {
    test-terraform = {
        users = ["tudormangri10", "CosminBriscaru"]
    }
  }
}
```
