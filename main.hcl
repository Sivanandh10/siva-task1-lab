resource "lab" "main" {
  title       = "Web Server Mission Control"
  description = "A live nginx web server is running. Use the Terminal to customize it and watch your changes appear instantly in the Service tab."
  layout      = resource.layout.two_column

  settings {
    timelimit {
      duration   = "45m"
      show_timer = true
    }
  }

  content {
    chapter "overview" {
      title = "Chapter 1 - Overview"
      page "overview" {
        reference = resource.page.overview
      }
    }

    chapter "customize" {
      title = "Chapter 2 - Customize the Site"
      page "customize" {
        reference = resource.page.customize
      }
    }

    chapter "status" {
      title = "Chapter 3 - Add a Status Page"
      page "status" {
        reference = resource.page.status
      }
    }
  }
}
