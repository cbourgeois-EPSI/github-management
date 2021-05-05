provider "github" {
  token = "${cbourgeois-gth}"
  owner = "${var.github_owner}"
}


resource "github_membership" "membership_for_user_x" {
  
}
