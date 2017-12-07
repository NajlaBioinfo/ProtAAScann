dashboardPage(
  dashboardHeader(title = "Citing"),
  dashboardSidebar(disable = FALSE),
  dashboardBody(
    box(
      includeHTML("www/citing.html")
    )
  )
)