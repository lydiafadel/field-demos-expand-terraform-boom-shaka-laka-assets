resource "tfe_policy_set" "pmr" {
  name          = "enforce-mandatory-tags"
  description   = "param mandatory_tags default Name, ttl, owner, se-region, purpose, terraform"
  organization  = var.TFC_ORGANIZATION
  policies_path = "/aws/tags/"
  global = true

  vcs_repo {
    identifier         = var.GITHUB_IDENTIFIER
    branch             = "master"
    ingress_submodules = false
    oauth_token_id     = var.OAUTH_TOKEN_ID
  }
}
