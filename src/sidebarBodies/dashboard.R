fluidPage(
  fluidRow(
    #INPUT FOR SEQ
    column(8,
           box(
             width = "95%",
             solidHeader = TRUE, 
             status = "primary",
             #textInput("text", "ex: ASQLDRFRVFLGWDNGMMLVYQGNKTYE")
             fluidRow(column
                      (width = 12,
                        textAreaInput("textareaID", "Protein Sequence input(ex): ASQLDRFRVFLGWDNGMMLVYQGNKTYE",value = "ARQQNLFINFCLILIFLLLI", width = NULL, placeholder = NULL))),
             br(),
             fluidRow(column
                      (width = 6,
                        
                        box(    
                          title = "AA Classification"#,
                          #plotOutput("plotaaclass",width = 300)
                        )),
                      column(width = 6,
                             box(    
                               title = "Amino acid count plot"#,
                               #plotOutput("plot2",width = 300)
                             ))
             )
           )
    ),
    br(),
    column(4,
           box(
             title = "Protein Infos",
             width = "45%",
             solidHeader = TRUE, 
             status = "primary",
             background = "olive")
             #background = "olive",
             #mainPanel(tableOutput("values")))
    )
    
  ),
  fluidRow(
    column(3,
           box(
             title = "AA class", 
             width = "20%",
             solidHeader = TRUE,
             status = "primary",
             color = "green",
             background = "green"),
             #background = "green",
             #mainPanel(tableOutput("aacompvalues"))),
           
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
             background = "green")
             #background = "green",
             #mainPanel(tableOutput("aacountingvalues")))
    ),
    column(6,
           box(
             tags$head(tags$style(HTML("#predictiontable {color:black}"))),
             title = "AA prediction", 
             status = "primary",
             width = "30%",
             solidHeader = TRUE,
             color = "green",
             background = "navy"),
             #background = "navy",
             #mainPanel(tableOutput("predictionvalues"))),
             #DT::dataTableOutput("predictiontable")),
           box(    
             #title = "AA mb pos pred.",
             width = "30%"
             #width = "30%",
             #plotOutput("plot3",width = 350)
           )
           
           
    )
  )
  #red, yellow, aqua, blue, light-blue, green, navy, teal, olive, lime, orange, fuchsia, purple, maroon, black
)

