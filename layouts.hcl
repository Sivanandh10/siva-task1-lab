resource "layout" "two_column" {
  column {
    width = "50"
    instructions {}
  }
  column {
    width = "50"
    tab "service" {
      title  = "Live Site"
      target = resource.service.web
      active = true
    }
    tab "terminal" {
      title  = "Terminal"
      target = resource.terminal.shell
    }
    tab "editor" {
      title  = "HTML Editor"
      target = resource.editor.code
    }
  }
}
