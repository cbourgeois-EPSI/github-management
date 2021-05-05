resource "github_branch_protection" "github-management" {
  repository_id = github_repository.github-management.github-management
  # also accepts repository name

  pattern          = "protect"
  enforce_admins   = true
  allows_deletions = true

  required_status_checks {
    strict   = true
    contexts = []
  }

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    dismissal_restrictions = [
      data.github_user.example.node_id,
      github_team.example.node_id,
    ]
  }

  push_restrictions = [
    data.github_user.example.node_id,
  ]

}

resource "github_repository" "example" {
  name = "test"
}

data "github_user" "example" {
  username = "example"
}

resource "github_team" "example" {
  name = "Example Name"
}

resource "github_team_repository" "example" {
  team_id    = github_team.example.id
  repository = github_repository.example.name
  permission = "pull"
}