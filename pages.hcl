resource "page" "task1" {
  title = "Task 1 - Create a File"
  file  = "instructions/task1.md"
  activities = {
    make_file = resource.task.make_file
  }
}