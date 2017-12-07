fluidPage(
  # App title ----
  titlePanel("Plot Export"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Choose dataset ----
      selectInput("plotset", "Choose a plot:",
                  choices = c("Plot_AAcount", "Pie_AAclass", "Plot_AAmbpred")),
      
      # Button
      downloadButton("downloadPlot", "Export")
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      plotOutput("ploting")
    )
    
  )
  
  #red, yellow, aqua, blue, light-blue, green, navy, teal, olive, lime, orange, fuchsia, purple, maroon, black
)

