module "github-iam" {
source = "../"
  
  # Users to be added in the organization
  organization_members = {
     "user1" = "admin"
     "user2" = "member"
  }

  # Teams to be added in the org, along with user distribution per team
  team_members = {
    test-terraform = {
        users = ["user1", "user2"]
    }
  }
}