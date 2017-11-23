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

#MODULE: Protein sequence processing.
#_______________________________________________________________



## Function :: Traiting Sequence input.
trait_seq_fn <- function(seq_input) {
  seq_upperCasse <- toupper(seq_input)
  seq_trimmed <- str_trim(seq_upperCasse)
  seq_to_treat <-str_replace_all(seq_trimmed, "[\r\n]" , "")
  return (seq_to_treat)
}


## Function :: Counting seq length.
length_seq_fn <- function(seq_input) {
  length_seq=0
  strlg <- str_length(seq_input)
  #strlg <- as.character(length(seq_input))
  return (strlg)
}