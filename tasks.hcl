resource "task" "verify_setup" {
  description = "Verify the setup script provisioned the project"

  config {
    target = resource.container.workstation
  }

  condition "setup_done" {
    description = "Verify the setup script provisioned the project"

    setup {
      script = "scripts/setup.sh"
    }

    check {
      script          = "scripts/check_setup.sh"
      failure_message = "Setup not detected. Check it with: ls -R /root/project"
    }
  }
}

resource "task" "find_name" {
  description = "Read the project name from the terminal"

  config {
    target = resource.container.workstation
  }

  condition "found" {
    description = "Read the project name from the terminal"

    check {
      script          = "scripts/check_name.sh"
      failure_message = "Run: grep name /root/project/info.txt > /root/name.txt"
    }
  }
}