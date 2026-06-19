resource "lab" "main" {
  title       = "Siva's Task 1 Lab"
  description = "Task 1: a setup script installs jq and tree, then you use them in the terminal."
  layout      = resource.layout.two_column

  content {
    chapter "task1" {
      title = "Task 1"
      page "task1" {
        reference = resource.page.task1
      }
    }
  }
}