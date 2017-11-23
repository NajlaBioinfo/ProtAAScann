#!/usr/local/bin/R
#//////////////////////////////////////////////////////////
#__author__ = "BEN HASSINE Najla(bhndevtools@gmail.com)"#/
#__version__ = "1.0.0"				                   #/
#__copyright__ = "Copyright(c) 2017 BHNtools"    #/
#__license__ = "BHNtools"			                 #/
#/////////////////////////////////////////////////////


#_______________________________________________________________
#R version 3.4.2 (2017-09-28) -- "Short Summer"
#Copyright (C) 2017 The R Foundation for Statistical Computing
#Platform: x86_64-pc-linux-gnu (64-bit)
#"Debian GNU/Linux 9 (stretch)

#PROGRAMME: BHNtools::ShinyApp
#Web API GUI :: Generate Interactive App with Shiny package.

#MODULE: Ui module
#_______________________________________________________________


ui <- fluidPage(
  theme =shinytheme("flatly"),
  navbarPage("Shiny-Protaascan :: Menu",
             tabPanel("Home"),
                      #source('menubarsdash/homebody.R')),
             tabPanel("References"),
                      #source('menubarsdash/referencebody.R')),
             tabPanel("HowTo"),
                      #source('menubarsdash/howto.R')),
             tabPanel("About"),
                      #source('menubarsdash/aboutbody.R')),
             tabPanel("Citing"),
                      #source('menubarsdash/citing.R')),
             tabPanel("Contact"),
                      #source('menubarsdash/contactbody.R')),
             tabPanel("License")
                      #source('menubarsdash/licensebody.R'))
  ),
  navbarPage("BHNTools©2017-2018, Last update November, 2017")
)
#basic
#ui <- fluidPage(
#)