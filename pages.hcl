resource "page" "task1" {
  title = "Task 1 - Setup and Verify"
  file  = "instructions/task1.md"
  activities = {
    verify_setup = resource.task.verify_setup
    find_name    = resource.task.find_name
  }
}