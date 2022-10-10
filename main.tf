### Add a user to the organization
resource "github_membership" "user_membership" {
  for_each = var.organization_members
  username = each.key
  role     = each.value
}

### Add a team to the Organization
resource "github_team" "organization_team" {

  for_each = var.team_members
  name     = each.key

  description = var.team_description
  privacy     = "closed"
}

### Add users to their respective teams
resource "github_team_members" "org_team_members" {

  for_each = var.team_members
  team_id  = github_team.organization_team[each.key].id

  dynamic "members" {
    for_each = var.team_members[each.key].users
    content {
      username = members.value
      role     = "member"
    }
  }
}
