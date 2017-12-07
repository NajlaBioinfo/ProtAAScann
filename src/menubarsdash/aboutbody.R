dashboardPage(
  dashboardHeader(title = "About"),
  dashboardSidebar(disable = FALSE),
  dashboardBody(
    #___Need to bee in the same path of UI.R ___
    box(
      img(src = "images/logoprotaa.png", height = 200, width = 200),
      img(src = "images/dockerShinylg.png", height = 200, width = 200)
    ),
    box(
      helpText(h3("BHNtools::Shiny-Protaascan 1.0.0"),
               "Protein AA scan interactive tool."),
      p("Goals:"),
      p("-Quick scan of protein content."),
      p("-Testing some proteomics R-packages."),
      sidebarSearchForm(textId = "searchText", buttonId = "searchButton",
                        label = "Search..."))
  )
)