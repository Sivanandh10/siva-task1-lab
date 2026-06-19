resource "terminal" "shell" {
  target = resource.container.workstation
  shell  = "/bin/bash"
}