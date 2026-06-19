resource "task" "list_project" {
  description = "List the project files"

  config {
    target = resource.container.workstation
  }

  condition "listed" {
    description = "List the project files"

    setup {
      script = "scripts/setup.sh"
    }

    check {
      script          = "scripts/check_listing.sh"
      failure_message = "Run: ls -R /root/project > /root/listing.txt"
    }
  }
}

resource "task" "find_name" {
  description = "Find the project name"

  config {
    target = resource.container.workstation
  }

  condition "found" {
    description = "Find the project name"

    check {
      script          = "scripts/check_name.sh"
      failure_message = "Run: grep name /root/project/info.txt > /root/name.txt"
    }
  }
}