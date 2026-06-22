resource "page" "overview" {
  title = "Chapter 1 - Overview"
  file  = "instructions/overview.md"
  activities = {
    check_nginx = resource.task.check_nginx
  }
}

resource "page" "customize" {
  title = "Chapter 2 - Customize the Site"
  file  = "instructions/customize.md"
  activities = {
    edit_homepage = resource.task.edit_homepage
  }
}

resource "page" "status" {
  title = "Chapter 3 - Add a Status Page"
  file  = "instructions/status.md"
  activities = {
    add_status = resource.task.add_status
  }
}
