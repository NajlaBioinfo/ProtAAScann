#!/usr/local/bin/R
#//////////////////////////////////////////////////////////
#__author__ = "BEN HASSINE Najla(bhndevtools@gmail.com)"#/
#__version__ = "Protaascan - v1.0.0"				            #/
#__copyright__ = "Copyright(c) 2017 BHNtools"           #/
#__license__ = "BHNtools"			                          #/
#////////////////////////////////////////////////////////


#_______________________________________________________________
#R version 3.4.2 (2017-09-28) -- "Short Summer"
#Copyright (C) 2017 The R Foundation for Statistical Computing
#Platform: x86_64-pc-linux-gnu (64-bit)
#"Debian GNU/Linux 9 (stretch)

#PROGRAMME: BHNtools::ShinyApp
#Web API GUI :: Generate Interactive App with Shiny package.

#MODULE: Launching APP
#_______________________________________________________________



########################
#LOADING LIBRARY/Global
########################
library(shiny)
library(shinyjs)
library(shinyBS)
library(shinythemes)
library(shinydashboard)



library(stringr)

library(ggplot2)

library(Peptides)

library(DT)

library(rsconnect)


########################
#SOURCING SCRIPTS
########################
# Define UI for application that draws a histogram
source('src/ui.R')


# Define server logic required to draw a histogram
source('src/server.R')


##################
#Run APPLICATION
##################
shinyApp(ui = ui, server = server)

