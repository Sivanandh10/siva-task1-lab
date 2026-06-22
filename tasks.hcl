resource "task" "check_nginx" {
  description = "Confirm nginx is running"
  config { target = resource.container.webserver }
  condition "running" {
    description = "Confirm nginx is running"
    setup { script = "scripts/setup.sh" }
    check {
      script          = "scripts/check_nginx.sh"
      failure_message = "Run: curl localhost and check the response"
    }
  }
}

resource "task" "edit_homepage" {
  description = "Add your name to the homepage"
  config { target = resource.container.webserver }
  condition "edited" {
    description = "Add your name to the homepage"
    check {
      script          = "scripts/check_homepage.sh"
      failure_message = "Add 'Agent: Siva' to /usr/share/nginx/html/index.html"
    }
  }
}

resource "task" "add_status" {
  description = "Create a /status page"
  success_message = "Outstanding work, Agent. Mission complete."
  config { target = resource.container.webserver }
  condition "status_exists" {
    description = "Create a /status page"
    check {
      script          = "scripts/check_status.sh"
      failure_message = "Create /usr/share/nginx/html/status.html with 'STATUS: ONLINE'"
    }
  }
}
