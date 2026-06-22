resource "terminal" "shell" {
  target = resource.container.webserver
  shell  = "/bin/bash"
}

resource "service" "web" {
  port   = 80
  target = resource.container.webserver
}

resource "editor" "code" {
  workspace "html" {
    directory = "/usr/share/nginx/html"
    target    = resource.container.webserver
  }
}
