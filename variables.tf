variable "owner" {
  description = "GitHub owner used to configure the provider"
  type        = string
  default     = "coremaker"
}

variable "user_list" { 
    default = {}
}

variable "add_teams" {
    type = map(object({
        users = list(string)
    }))
}
