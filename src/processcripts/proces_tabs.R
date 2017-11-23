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

#MODULE: Tables for protein sequence processing.
#_______________________________________________________________




########################
#SOURCING SCRIPTS
########################
#Scripts dealing with sequence input
source("src/processcripts/proces_InputSeq.R")




#Function : df 1 for plot 1
#-__ AA class: aacomp, peptides pkg __
aacomp_seq_fn <- function(seq_input) {
  seq_to_treat <- trait_seq_fn(seq_input)
  aaComp_tab <- aaComp(seq_to_treat)
  return (as.data.frame(aaComp_tab))
}

#Function : df 2 for Tabs 1
#-__ Protein infos : fncs from, peptides pkg __
proteinfo_tab_fn <- function(seq_input) {
  seq_to_treat <- trait_seq_fn(seq_input)
  
  #LEN SEQOUTPUT
  lenseq  <- length_seq_fn(seq_input)
  #pI SEQOUTPUT
  piSeq  <- pI_seq_fn(seq_input)
  #MwF SEQOUTPUT    
  MwFseq <- MwF_seq_fn(seq_input)
  #MwT SEQOUTPUT    
  MwTseq <- MwT_seq_fn(seq_input)
  #aIdx SEQOUTPUT
  aIdxseq <- aIdx_seq_fn(seq_input)
  #InstabilityIndex SEQOUTPUT       
  iidexseq <- instabilityidx_seq_fn(seq_input)
  #InstabilityIndex SEQOUTPUT      
  bomanIdxseq <- bomanidx_seq_fn(seq_input)
  #Hydrophobicity SEQOUTPUT    
  Hydrophseq <- hydrophobicity_seq_fn(seq_input)
  #Lipophilicity SEQOUTPUT    
  Lipophseq <- Lipophilicity_seq_fn(seq_input)

  
  proteinfo_tab <- data.frame(
    Name = c("Length",
             "pI[EMBOSS]",
             "Mw[monoisotopic:F.]",
             "Mw[monoisotopic:T.]",
             "AliphaticIndex",
             "InstabilityIndex",
             "BomanIndex",
             "Hydrophobicity[Zim.]",
             "Lipophilicity"),
    Value = as.character(c(lenseq,
                           piSeq,
                           MwFseq,
                           MwTseq,
                           aIdxseq,
                           iidexseq,
                           bomanIdxseq,
                           Hydrophseq,
                           Lipophseq))
    )
  colnames(proteinfo_tab) <-c("Prameter.","Value")
  return (proteinfo_tab)
}