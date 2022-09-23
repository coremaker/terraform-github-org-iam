variable "token" {
    default = ""
}

variable "owner" {
  description = "GitHub owner used to configure the provider"
  type        = string
  default     = "coremaker"
}

variable "user_list" { 
    default = {
    #    "user1" = "member"
    #    "user2" = "admin"
    }
}

variable "add_teams" {
    type = list(object({
        team = string
        users = list(string)
    }))
}
