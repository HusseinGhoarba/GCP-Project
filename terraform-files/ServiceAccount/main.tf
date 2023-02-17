#--------------Default Service-Account
resource "google_service_account" "default-SA" {
  account_id   = var.id-of-sa
  display_name = var.name-in-display
}

resource "google_project_iam_member" "iam-roles" {
  project = var.project-id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.default-SA.email}"
}