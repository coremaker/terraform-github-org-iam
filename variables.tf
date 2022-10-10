variable "organization_members" {
  default = {}
}

variable "team_description" {
  type = string
  default = ""
}

variable "team_members" {
  type = map(object({
    users = list(string)
  }))
}
