resource "page" "task1" {
  title = "Task 1 - Explore the Project"
  file  = "instructions/task1.md"
  activities = {
    list_project = resource.task.list_project
    find_name    = resource.task.find_name
  }
}