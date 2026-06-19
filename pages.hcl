resource "page" "task1" {
  title = "Task 1 - Provision and Use Tools"
  file  = "instructions/task1.md"
  activities = {
    use_tree = resource.task.use_tree
    use_jq   = resource.task.use_jq
  }
}