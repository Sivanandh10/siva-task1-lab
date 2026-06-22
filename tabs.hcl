resource "terminal" "shell" {
  target = resource.container.webserver
  shell  = "/bin/bash"
}

resource "editor" "code" {
  workspace "html" {
    directory = "/usr/share/nginx/html"
    target    = resource.container.webserver
  }
}
