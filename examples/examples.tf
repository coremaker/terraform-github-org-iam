module "github-iam" {
source = "../"
  
  # Users to be added in the organization
  organization_members = {
     "user1" = "admin"
     "user2" = "member"'
     "user3" = "admin"
  }

  # Teams to be added in the org, along with user distribution per team
  team_members = {
    test-terraform = {
        members = ["user1", "user2"]
        maintainers = ["user3"]
    }
  }
}