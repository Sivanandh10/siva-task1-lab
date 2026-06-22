resource "layout" "two_column" {
  column {
    width = "50"
    instructions {}
  }
  column {
    width = "50"
    tab "terminal" {
      title  = "Terminal"
      target = resource.terminal.shell
      active = true
    }
    tab "editor" {
      title  = "HTML Editor"
      target = resource.editor.code
    }
    tab "reference" {
      title  = "Reference"
      target = resource.note.reference
    }
  }
}
