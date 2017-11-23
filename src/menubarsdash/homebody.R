dashboardPage(
  dashboardHeader(
    title = "Home",
    titleWidth = 200,
    dropdownMenu(type = "notifications",
                 notificationItem(
                   text = "MongoDB with docker only.",
                   icon = icon("exclamation-triangle"),
                   status = "warning"
                 ))),
  dashboardSidebar(
    width = 150,
    sidebarMenu(
      menuItem("Dashboard", tabName = "board", icon = icon("dashboard")),
      menuItem("Links", tabName = "linking", icon = icon("link")))
  ),
  dashboardBody(
    tabItems(
      tabItem(class = "active",tabName = "board",
              width = "98%",
              hight = "100%"),
              #hight = "100%",
              #source('sidebarBodies/dashboard.R')),
      
      tabItem(class = "active",tabName = "linking",
              width = "98%",
              hight = "100%")
              #hight = "100%",
              #source('sidebarBodies/protaalinks.R'))
    )
  )
)