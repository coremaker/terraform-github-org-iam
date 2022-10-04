### Add a user to the organization
resource "github_membership" "membership_for_some_user" {
  for_each = var.user_list
  username = each.key
  role     = each.value
}

### Add a team to the Organization
resource "github_team" "some_team" {

  for_each = var.add_teams
  name     = each.key

  description = "Some cool team"
  privacy     = "closed"
}

### Add users from terraform.tfvars to their respective teams
resource "github_team_members" "some_team_members" {

  for_each = var.add_teams
  team_id  = github_team.some_team[each.key].id

  dynamic "members" {
    for_each = var.add_teams[each.key].users
    content {
      username = members.value
      role     = "member"
    }
  }
}
