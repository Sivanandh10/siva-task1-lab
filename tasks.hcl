resource "task" "make_file" {
  description = "Create a file in your home directory"

  config {
    target = resource.container.workstation
  }

  condition "file_created" {
    description = "Create a file in your home directory"

    check {
      script          = "scripts/check_file.sh"
      failure_message = "Run: echo hello from the lab > /root/hello.txt"
    }
  }
}