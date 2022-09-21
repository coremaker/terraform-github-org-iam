
### Add a user to the organization
resource "github_membership" "membership_for_some_user" {
    for_each = var.user_list
    username = each.key
    role     = each.value
}

### Add a team to the Organization
resource "github_team" "some_team" {

  count = "${length(var.add_teams)}"
  name = var.add_teams[count.index].team

  description = "Some cool team"
  privacy     = "closed"
}

### Add users from terraform.tfvars to their respective teams
resource "github_team_members" "some_team_members" {

  count = "${length(var.add_teams)}"
  team_id  = github_team.some_team[count.index].id

  dynamic "members" {
    for_each = var.add_teams[count.index].users
    content {
      username = var.add_teams[count.index].users[members.key]
      role     = "member"
    }
  }
}
