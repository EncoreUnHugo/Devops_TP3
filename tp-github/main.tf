resource "github_repository" "app" {
  name        = "${var.project_name}-demo"
  description = "Dépôt géré par Terraform - DevOps S8"
  visibility  = "public"
  has_issues  = true
  auto_init   = true
  topics      = ["terraform", "devops"]
}
resource "github_branch_protection" "main" {
  repository_id = github_repository.app.node_id
  pattern       = "main"
  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
  }
}
