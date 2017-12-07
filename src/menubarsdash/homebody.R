dashboardPage(
  dashboardHeader(
    title = "Home",
    titleWidth = 100,
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
      menuItem("Export", tabName = "rowexport", icon = icon("th-list")),
      menuItem("Links", tabName = "linking", icon = icon("link")))
  ),
  dashboardBody(
    tabItems(
      tabItem(class = "active",tabName = "board",
              width = "99%",
              #hight = "100%"),
              hight = "100%",
              source('src/sidebarBodies/dashboard.R')),
      
      
      
      
      
      tabItem(class = "active",tabName = "linking",
              width = "98%",
              #hight = "100%")
              hight = "100%",
              source('src/sidebarBodies/protaalinks.R'))
    )
  )
)