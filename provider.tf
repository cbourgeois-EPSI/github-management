provider "github" {
  token = "${var.github_token}"
  owner = "${var.github_owner}"
}


resource "github_membership" "membership_for_user_x" {
  
}
