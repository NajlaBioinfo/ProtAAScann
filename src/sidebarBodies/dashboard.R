fluidPage(
  fluidRow(
    #INPUT FOR SEQ
    column(9,
           box(
             width = "99%",
             solidHeader = TRUE, 
             status = "primary",
             fluidRow(column
                      (width = 12,
                        textAreaInput("textareaID", "Protein Sequence input(ex): ASQLDRFRVFLGWDNGMMLVYQGNKTYE",value = "ARQQNLFINFCLILIFLLLI", width = NULL, placeholder = NULL))),
             br(),
             fluidRow(column
                      (width = 6,
                        box(
                          width = "45%",
                          title = "AA Classification",
                          plotOutput("plot2aaclass",width = 400)
                        )),
                      column(width = 6,
                             box(
                               width = "45%",
                               title = "Amino acid count plot",
                               plotOutput("plot1aacount",width = 380)
                             ))
             )
           )
    ),
    br(),
    column(3,
           box(
             title = "Protein Infos",
             width = "99%",
             solidHeader = TRUE, 
             status = "primary",
             #background = "olive")
             background = "olive",
             mainPanel(tableOutput("proteinfovalues")))
    )
    
  ),
  fluidRow(
    column(4,
           box(
             title = "AA class", 
             width = "20%",
             solidHeader = TRUE,
             status = "primary",
             color = "green",
             #background = "green"),
             background = "green",
             mainPanel(tableOutput("aaclassvalues"))),
           
           box(
             title = "Specific AA", 
             width = "20%",
             solidHeader = TRUE,
             status = "primary",
             color = "green",
             background = "green",
             mainPanel(tableOutput("specificaavalues"))),
           box(
             title = "Warning", width = "20%", solidHeader = TRUE, status = "warning",
             "Everythings seems working fine.",
             br(),
             actionButton("show", "Show")
           )
    ),
    column(3,
           box(
             title = "AA %", 
             status = "primary",
             width = "20%",
             solidHeader = TRUE,
             color = "green",
             #background = "green")
             background = "green",
             mainPanel(tableOutput("aacountingvalues")))
    ),
    column(5,
           box(
             tags$head(tags$style(HTML("#predictiontable {color:black}"))),
             title = "AA prediction", 
             status = "primary",
             width = "30%",
             solidHeader = TRUE,
             color = "green",
             #background = "navy"),
             background = "navy",
             DT::dataTableOutput("predictiontable")),
           box(    
             #title = "AA mb pos pred.",
             #width = "30%"
             width = "30%",
             plotOutput("plot3predmb",width = 350)
           )
           
           
    )
  )
  #red, yellow, aqua, blue, light-blue, green, navy, teal, olive, lime, orange, fuchsia, purple, maroon, black
)

