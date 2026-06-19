resource "task" "use_tree" {
  description = "Use tree to capture the project layout"

  config {
    target = resource.container.workstation
  }

  condition "tree_used" {
    description = "Use tree to capture the project layout"

    setup {
      script = "scripts/setup.sh"
    }

    check {
      script          = "scripts/check_tree.sh"
      failure_message = "Run: tree /root/project > /root/layout.txt"
    }
  }
}

resource "task" "use_jq" {
  description = "Use jq to extract a value from JSON"

  config {
    target = resource.container.workstation
  }

  condition "jq_used" {
    description = "Use jq to extract a value from JSON"

    check {
      script          = "scripts/check_jq.sh"
      failure_message = "Run: jq -r .name /root/data.json > /root/name.txt"
    }
  }
}