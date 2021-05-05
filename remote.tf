terraform {
  backend "remote" {
    organization = "EPSI-bourgeois"

    workspaces {
      name = "test"
    }
  }
}
