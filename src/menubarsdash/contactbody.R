dashboardPage(
  dashboardHeader(title = "Contact"),
  dashboardSidebar(disable = FALSE),
  dashboardBody(
    box(
      includeHTML("www/contact.html")
    )
  )
)