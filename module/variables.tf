variable "member_user" {
    type = string
    description = "permet de générer un nom d'utilisateur"
}

variable "repository" {
    type = string
    description = "permet de créer un repository"
}

variable "GH_TOKEN"{
    type = string
    description = "token pour sauvegarder les states"
}
