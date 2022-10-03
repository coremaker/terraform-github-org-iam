variable "user_list" { 
    default = {}
}

variable "add_teams" {
    type = map(object({
        users = list(string)
    }))
}
