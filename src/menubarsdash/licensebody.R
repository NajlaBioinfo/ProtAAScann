dashboardPage(
  dashboardHeader(title = "MIT"),
  dashboardSidebar(disable = FALSE),
  dashboardBody(
    box(
      includeText("License.txt")
    )
  )
)