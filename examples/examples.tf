module "github-iam" {
source = "../"
  
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