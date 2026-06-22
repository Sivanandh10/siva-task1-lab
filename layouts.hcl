resource "layout" "two_column" {
  column {
    width = "50"
    instructions {}
  }
  column {
    width = "50"
    tab "service" {
      title  = "Live Site"
      target = resource.service.webserver
      active = true
    }
    tab "terminal" {
      title  = "Terminal"
      target = resource.terminal.shell
    }
  }
}
