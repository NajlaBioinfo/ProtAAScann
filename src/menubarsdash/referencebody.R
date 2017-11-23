dashboardPage(
  dashboardHeader(
    title = "References",
    titleWidth = 150),
  
  dashboardSidebar(
    width = 150,
    sidebarMenu(
      menuItem("Tools", tabName = "wrenchs", icon = icon("wrench")),
      menuItem("Rpackages", tabName = "boardpkgs", icon = icon("bars")),
      menuItem("Databases", tabName = "dbs", icon = icon("database")))
  ),
  dashboardBody(
    tabItems(
      tabItem(class = "active",tabName = "wrenchs",
              width = "98%",
              hight = "100%",
              source('src/sidebarBodies/toolList.R')),
      
      tabItem(class = "active",tabName = "boardpkgs",
              width = "98%",
              hight = "100%",
              source('src/sidebarBodies/rpackagesList.R')),
      
      tabItem(class = "active",tabName = "dbs",
              width = "98%",
              hight = "100%",
              source('src/sidebarBodies/databasesList.R'))
    )
  )
)