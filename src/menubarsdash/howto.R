dashboardPage(
  dashboardHeader(title = "Docs"),
  dashboardSidebar(disable = FALSE),
  dashboardBody(
    box(
      includeHTML("www/howto.html")
    )
  )
)