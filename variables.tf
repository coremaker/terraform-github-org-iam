variable "user_list" {
  default = {}
}

variable "team_description" {
  type = string
  default = ""
}

variable "add_teams" {
  type = map(object({
    users = list(string)
  }))
}
